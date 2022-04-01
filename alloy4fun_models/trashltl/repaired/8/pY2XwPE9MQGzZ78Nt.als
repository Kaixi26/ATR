open main
pred idpY2XwPE9MQGzZ78Nt_prop9 {
  all f : Protected { always (f not in Trash) }
}
pred __repair { idpY2XwPE9MQGzZ78Nt_prop9 }
check __repair { idpY2XwPE9MQGzZ78Nt_prop9 <=> prop9o }