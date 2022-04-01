open main
pred idBjYi8Wi3xBi2pvPAR_prop6 {
  eventually some f:File | f not in File' and always f not in File'
}
pred __repair { idBjYi8Wi3xBi2pvPAR_prop6 }
check __repair { idBjYi8Wi3xBi2pvPAR_prop6 <=> prop6o }