(* First OCaml Code! *)

let mod26 x =
  (x + 13) mod 26
;;

let rot13offset ord off =
  let ind = ord - off in
    Char.chr ((mod26 ind) + off)

let rot13upper ord =
  rot13offset ord 65
;;

let rot13lower ord =
  rot13offset ord 97
;;

let rot13char c =
  let ord = Char.code c in
    if ord >= 65 && ord <= 90 then
      rot13upper ord
    else if ord >= 97 && ord <= 122 then
      rot13lower ord
    else
      Char.chr ord
;;

try
 while true do
   let line = input_line stdin in
    let rot13line = String.map rot13char line in
      Printf.printf "%s\n" rot13line
 done;
 None
with
 End_of_file -> None
;;
