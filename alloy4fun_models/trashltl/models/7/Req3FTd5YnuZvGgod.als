open main
pred idReq3FTd5YnuZvGgod_prop8 {
	 all f:File| eventually f.*link  in Trash
}
pred __repair { idReq3FTd5YnuZvGgod_prop8 }
check __repair { idReq3FTd5YnuZvGgod_prop8 <=> prop8o }