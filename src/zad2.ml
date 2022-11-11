let derive fn list dx =
  List.map (fun x -> (( fn (x +. dx) -. fn(x)) /. dx)) list;;

derive (fun x -> (x*.x*.x+.10.0)) [2.0; 3.0; 5.0] 0.0000001;;
derive (fun x -> (x*.x+.10.0)) [2.0; 3.0; 5.0] 0.0000001;;

