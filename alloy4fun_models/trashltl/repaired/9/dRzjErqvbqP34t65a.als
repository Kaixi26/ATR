open main
pred iddRzjErqvbqP34t65a_prop10 {
  always all f:File | f in Protected implies f in Protected
}
pred __repair { iddRzjErqvbqP34t65a_prop10 }
check __repair { iddRzjErqvbqP34t65a_prop10 <=> prop10o }