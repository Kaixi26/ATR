open main
pred idcFHuENpZpLj5oSvrJ_prop6 {
	always all f:File |  f in Trash implies Trash'=Trash
}
pred __repair { idcFHuENpZpLj5oSvrJ_prop6 }
check __repair { idcFHuENpZpLj5oSvrJ_prop6 <=> prop6o }