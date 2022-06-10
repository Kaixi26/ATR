open main
pred idPHCiLgNmrcXBdQukx_prop6 {
  once some f : Trash | once f in Trash implies always f in Trash
}
pred __repair { idPHCiLgNmrcXBdQukx_prop6 }
check __repair { idPHCiLgNmrcXBdQukx_prop6 <=> prop6o }