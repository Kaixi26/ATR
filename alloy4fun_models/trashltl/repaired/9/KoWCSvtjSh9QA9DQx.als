open main
pred idKoWCSvtjSh9QA9DQx_prop10 {
  all f:File | f in Protected implies always f in Protected
}
pred __repair { idKoWCSvtjSh9QA9DQx_prop10 }
check __repair { idKoWCSvtjSh9QA9DQx_prop10 <=> prop10o }