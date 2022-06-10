open main
pred idvZBibsDMoEbeDYEyN_prop6 {
  always some f:File | f in Trash implies always f in Trash'

}
pred __repair { idvZBibsDMoEbeDYEyN_prop6 }
check __repair { idvZBibsDMoEbeDYEyN_prop6 <=> prop6o }