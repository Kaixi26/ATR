open main
pred idQNT3b3pFp5hu7S7JH_prop10 {
	(all f:File | after always f in Protected)
}
pred __repair { idQNT3b3pFp5hu7S7JH_prop10 }
check __repair { idQNT3b3pFp5hu7S7JH_prop10 <=> prop10o }