let remover f list =
  let rec remover_rec fn xs res =
    match xs with
      [] -> res
    | xs when (fn (List.hd xs)) ->  remover_rec fn (List.tl xs) ((List.hd xs)::res)
    | _ -> remover_rec f (List.tl xs) res
  in (List.rev (remover_rec f list []));;

remover (fun x -> ((x mod 2)=0)) [1;3;4;6;8;9];;


let rec remover_chaos fn xs =
  match xs with
    [] -> []
   |xs when (fn (List.hd xs)) -> ((List.hd xs)::remover_chaos fn (List.tl xs))
   |_ -> remover_chaos fn (List.tl xs);;



remover_chaos (fun x -> ((x mod 2)=0)) [1;3;4;6;8;9];;
