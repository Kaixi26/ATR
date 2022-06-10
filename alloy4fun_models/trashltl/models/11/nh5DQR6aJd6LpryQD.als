open main
pred idnh5DQR6aJd6LpryQD_prop12 {
	all f:File-Protected | eventually always f in Trash
}
pred __repair { idnh5DQR6aJd6LpryQD_prop12 }
check __repair { idnh5DQR6aJd6LpryQD_prop12 <=> prop12o }