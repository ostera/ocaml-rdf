(** Example *)

let loop () =
  prerr_endline "loop";
  for i = 0 to 100000 do ignore(Unix.stat "/tmp")done;
  prerr_endline "end of loop"
;;

let x =
  let rasqal = Rdf_rasqal.new_world () in
  let _ =
    let raptor = Rdf_raptor.new_world () in
    prerr_endline (Printf.sprintf "raptor address: %s" (Nativeint.to_string (Rdf_raptor.pointer_of_world raptor)));
    Rdf_rasqal.world_set_raptor rasqal (Some raptor) ;
    loop();
    ignore(raptor);
    let world = Rdf_init.new_world () in
    Rdf_init.world_open world;
    Rdf_init.world_set_rasqal world (Some rasqal);
    Rdf_init.world_init_mutex world;
    Rdf_init.world_set_digest world "hello";
  in
  let foo =
    let raptor = Rdf_rasqal.world_get_raptor rasqal in
    match raptor with
      None -> prerr_endline "No raptor !"
    | Some r ->
        prerr_endline
        (Printf.sprintf "OK: there is a raptor; address is %s"
         (Nativeint.to_string (Rdf_raptor.pointer_of_world r))
        );
  in
  ()
;;

loop();;
let () = ignore(x);;
let rasqal = ();;
loop();;
loop();;