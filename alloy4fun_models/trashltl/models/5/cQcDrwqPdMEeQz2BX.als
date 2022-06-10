open main
pred idcQcDrwqPdMEeQz2BX_prop6 {
 	always some f:File | f in Trash implies always f in Trash'
}
pred __repair { idcQcDrwqPdMEeQz2BX_prop6 }
check __repair { idcQcDrwqPdMEeQz2BX_prop6 <=> prop6o }