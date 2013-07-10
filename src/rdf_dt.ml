(** *)

open Rdf_node

type value =
  | Blank of string
  | Iri of Rdf_uri.uri
  | String of string
  | Int of int
  | Float of float
  | Bool of bool
  | Datetime of Netdate.t
  | Ltrl of string * string option (* optional language *)

exception Type_error of value * string
exception Invalid_literal of Rdf_node.literal

let date_fmt = "%d %b %Y %T %z"

let string v =
  let s =
    match v with
    | Iri t -> Rdf_uri.string t
    | String s -> s
    | Int n -> string_of_int n
    | Float f -> string_of_float f
    | Bool true -> "true"
    | Bool false -> "false"
    | Datetime t -> Netdate.format ~fmt: date_fmt t
    | Ltrl (s, _) -> s
    | Blank _ -> raise (Type_error (v, "string"))
  in
  String s

let int v =
  try
    let n =
    match v with
      | String s
      | Ltrl (s, _) -> int_of_string s
      | Int n -> n
      | Float f -> truncate f
      | Bool true -> 1
      | Bool false -> 0
      | Datetime _
      | Iri _ | Blank _ -> failwith ""
    in
    Int n
  with
    _ -> raise (Type_error (v, "int"))
;;

let float v =
  try
    let f =
      match v with
      | String s
      | Ltrl (s, _) -> float_of_string s
      | Int n -> float n
      | Float f -> f
      | Bool true -> 1.0
      | Bool false -> 0.0
      | Datetime _
      | Iri _ | Blank _ -> failwith ""
    in
    Float f
  with
    _ -> raise (Type_error (v, "float"))
;;


let bool v =
  try
    let b =
      match v with
      | String s
      | Ltrl (s, _) ->
          (match s with
            "1" | "true" -> true
           | "0" | "false" -> false
           | _ -> failwith ""
          )
      | Int n -> n <> 0
      | Float f ->
          (match classify_float f with
             FP_zero | FP_nan -> false
            |_ -> true
          )
      | Bool b -> b
      | Datetime _
      | Iri _ | Blank _ -> failwith ""
    in
    Bool b
  with
    _ -> raise (Type_error (v, "bool"))
;;

let datetime v =
  try
    let t =
      match v with
      | String s
      | Ltrl (s, _) -> Netdate.parse s
      | Int _ | Float _ | Bool _  | Iri _  | Blank _ -> failwith ""
      | Datetime t -> t
    in
    Datetime t
  with
    _ -> raise (Type_error (v, "datetime"))
;;

let ltrl v =
  try
    let (s, lang) =
      match v with
      | Iri t -> (Rdf_uri.string t, None)
      | String s -> (s, None)
      | Ltrl (s, l) -> (s, l)
      | Int n -> (string_of_int n, None)
      | Float f -> (string_of_float f, None)
      | Bool true -> ("true", None)
      | Bool false -> ("false", None)
      | Datetime t -> (Netdate.format ~fmt: date_fmt t, None)
      | Blank _ -> raise (Type_error (v, "ltrl"))
    in
    Ltrl (s, lang)
  with
    _ -> raise (Type_error (v, "ltrl"))
;;

let numeric v =
  try
    match v with
      | String s
      | Ltrl (s, _) ->
          begin
            try Int (int_of_string s)
            with _ ->
              try Float (float_of_string s)
              with _ -> failwith ""
        end
    | Int n -> Int n
    | Float f -> Float f
    | Bool true -> Int 1
    | Bool false -> Int 0
    | Datetime _ | Iri _ | Blank _ -> failwith ""
  with
    _ -> raise (Type_error (v, "numeric"))
;;

let of_literal lit =
  try
    match lit.lit_type with
    | Some t when Rdf_uri.equal t Rdf_rdf.xsd_boolean ->
        bool (String lit.lit_value)
    | Some t when Rdf_uri.equal t Rdf_rdf.xsd_integer ->
        begin
          try Int (int_of_string lit.lit_value)
          with _ -> failwith ""
        end
    | Some t when Rdf_uri.equal t Rdf_rdf.xsd_double
          or Rdf_uri.equal t Rdf_rdf.xsd_decimal ->
        begin
          try Float (float_of_string lit.lit_value)
          with _ -> failwith ""
        end
    | Some t when Rdf_uri.equal t Rdf_rdf.xsd_string ->
        String lit.lit_value
    | None ->
        begin
          match lit.lit_language with
            None -> String lit.lit_value
          | Some s -> Ltrl (lit.lit_value, Some s)
        end
    | _ ->
        String lit.lit_value
  with
  _ -> raise (Invalid_literal lit)

let of_node = function
  Rdf_node.Uri t -> Iri t
| Rdf_node.Literal lit -> of_literal lit
| Rdf_node.Blank_ label -> Blank (Rdf_node.string_of_blank_id label)
| Rdf_node.Blank -> assert false

let to_node = function
| Iri t -> Rdf_node.Uri t
| Blank label -> Rdf_node.Blank_ (Rdf_node.blank_id_of_string label)
| String s -> Rdf_node.node_of_literal_string ~typ: Rdf_rdf.xsd_string s
| Int n -> Rdf_node.node_of_int n
| Float f -> Rdf_node.node_of_double f
| Bool b -> Rdf_node.node_of_bool b
| Datetime d -> Rdf_node.node_of_datetime ~d: (Netdate.since_epoch d) ()
| Ltrl (s,lang) -> Rdf_node.node_of_literal_string ?lang s

