open main
pred idJBJsKt5TZzt9ZSANj_prop18 {
  always all f: Protected | f in Protected until f in Trash
}
pred __repair { idJBJsKt5TZzt9ZSANj_prop18 }
check __repair { idJBJsKt5TZzt9ZSANj_prop18 <=> prop18o }