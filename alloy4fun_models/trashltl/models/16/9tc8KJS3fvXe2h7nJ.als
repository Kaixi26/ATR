open main
pred id9tc8KJS3fvXe2h7nJ_prop17 {
  all f: File | once f in Trash implies always after f not in File

}
pred __repair { id9tc8KJS3fvXe2h7nJ_prop17 }
check __repair { id9tc8KJS3fvXe2h7nJ_prop17 <=> prop17o }