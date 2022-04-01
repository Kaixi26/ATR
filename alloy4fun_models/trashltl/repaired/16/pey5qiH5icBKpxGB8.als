open main
pred idpey5qiH5icBKpxGB8_prop17 {
  always some f:File | f in Trash implies f not in File'

}
pred __repair { idpey5qiH5icBKpxGB8_prop17 }
check __repair { idpey5qiH5icBKpxGB8_prop17 <=> prop17o }