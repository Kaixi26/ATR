open main
pred idkFaRJka5KJ3SYRAj5_prop18 {
  always all f: Protected | f in Protected until f in Trash
}
pred __repair { idkFaRJka5KJ3SYRAj5_prop18 }
check __repair { idkFaRJka5KJ3SYRAj5_prop18 <=> prop18o }