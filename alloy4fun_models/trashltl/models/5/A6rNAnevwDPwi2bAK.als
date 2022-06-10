open main
pred idA6rNAnevwDPwi2bAK_prop6 {
 	eventually all f:File | always f in Trash implies always f in Trash'
}
pred __repair { idA6rNAnevwDPwi2bAK_prop6 }
check __repair { idA6rNAnevwDPwi2bAK_prop6 <=> prop6o }