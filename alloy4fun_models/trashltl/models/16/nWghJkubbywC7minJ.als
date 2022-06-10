open main
pred idnWghJkubbywC7minJ_prop17 {
	always File' = File - File & Trash
}
pred __repair { idnWghJkubbywC7minJ_prop17 }
check __repair { idnWghJkubbywC7minJ_prop17 <=> prop17o }