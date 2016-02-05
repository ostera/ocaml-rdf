
let rdfs_str = "http://www.w3.org/2000/01/rdf-schema#";;
let rdfs = Iri.of_string rdfs_str ;;
let rdfs_ s = Iri.of_string (rdfs_str ^ s);;

let class_ = rdfs_ "Class" ;;
let comment = rdfs_ "comment" ;;
let container = rdfs_ "Container" ;;
let containerMembershipProperty = rdfs_ "ContainerMembershipProperty" ;;
let datatype = rdfs_ "Datatype" ;;
let domain = rdfs_ "domain" ;;
let isDefinedBy = rdfs_ "isDefinedBy" ;;
let label = rdfs_ "label" ;;
let literal = rdfs_ "Literal" ;;
let member = rdfs_ "member" ;;
let range = rdfs_ "range" ;;
let resource = rdfs_ "Resource" ;;
let seeAlso = rdfs_ "seeAlso" ;;
let subClassOf = rdfs_ "subClassOf" ;;
let subPropertyOf = rdfs_ "subPropertyOf" ;;

module Open = struct
  let rdfs_class = class_
  let rdfs_comment = comment
  let rdfs_container = container
  let rdfs_containerMembershipProperty = containerMembershipProperty
  let rdfs_datatype = datatype
  let rdfs_domain = domain
  let rdfs_isDefinedBy = isDefinedBy
  let rdfs_label = label
  let rdfs_literal = literal
  let rdfs_member = member
  let rdfs_range = range
  let rdfs_resource = resource
  let rdfs_seeAlso = seeAlso
  let rdfs_subClassOf = subClassOf
  let rdfs_subPropertyOf = subPropertyOf
end

let add_label g iri ?lang s =
  let obj = Rdf_term.term_of_literal_string ?lang s in
  g.Rdf_graph.add_triple
    ~sub: (Rdf_term.Iri iri)
    ~pred: label
    ~obj
;;

let add_comment g iri ?lang s =
let obj = Rdf_term.term_of_literal_string ?lang s in
  g.Rdf_graph.add_triple
    ~sub: (Rdf_term.Iri iri)
    ~pred: comment
    ~obj
;;

let add_domain g iri dom =
  g.Rdf_graph.add_triple
    ~sub: (Rdf_term.Iri iri)
    ~pred: domain
    ~obj: (Rdf_term.Iri dom)
;;

let add_range g iri dom =
  g.Rdf_graph.add_triple
    ~sub: (Rdf_term.Iri iri)
    ~pred: range
    ~obj: (Rdf_term.Iri dom)
;;

let add_more g iri (pred, obj) =
  g.Rdf_graph.add_triple ~sub: (Rdf_term.Iri iri) ~pred ~obj
;;

let property g ~label ?(label_lang=[]) ?comment ?(comment_lang=[])
  ?(domains=[]) ?(ranges=[]) ?subof ?(more=[]) iri =
  g.Rdf_graph.add_triple ~sub: (Rdf_term.Iri iri)
    ~pred: Rdf_rdf.type_ ~obj: (Rdf_term.Iri Rdf_rdf.property);
  add_label g iri label ;
  List.iter (fun (s, lang) -> add_label g iri ~lang s) label_lang;
  (match comment with None -> () | Some s -> add_comment g iri s);
  List.iter (fun (s, lang) -> add_comment g iri ~lang s) comment_lang;
  List.iter (add_domain g iri) domains ;
  List.iter (add_range g iri) ranges ;
  (match subof with
    None -> ()
  | Some cl ->
       g.Rdf_graph.add_triple ~sub: (Rdf_term.Iri iri)
         ~pred: subPropertyOf ~obj: (Rdf_term.Iri cl)
  );
  List.iter (add_more g iri) more
;;

let class_ g ~label ?(label_lang=[]) ?comment ?(comment_lang=[])
   ?subof ?(more=[]) iri =
  g.Rdf_graph.add_triple ~sub: (Rdf_term.Iri iri)
    ~pred: Rdf_rdf.type_ ~obj: (Rdf_term.Iri class_);
  add_label g iri label ;
  List.iter (fun (s, lang) -> add_label g iri ~lang s) label_lang;
  (match comment with None -> () | Some s -> add_comment g iri s);
  List.iter (fun (s, lang) -> add_comment g iri ~lang s) comment_lang;
  (match subof with
    None -> ()
  | Some cl ->
       g.Rdf_graph.add_triple ~sub: (Rdf_term.Iri iri)
         ~pred: subClassOf ~obj: (Rdf_term.Iri cl)
  );
  List.iter (add_more g iri) more
;;

let add_namespaces g =
  g.Rdf_graph.add_namespace Rdf_rdf.rdf "rdf" ;
  g.Rdf_graph.add_namespace rdfs "rdfs"
;;
