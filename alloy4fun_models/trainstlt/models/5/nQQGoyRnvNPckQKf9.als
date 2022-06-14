open main
pred idnQQGoyRnvNPckQKf9_prop6 {
	
	always all s : Signal | s in Green => s not in Green' or s not in Green => s in Green'
}
pred __repair { idnQQGoyRnvNPckQKf9_prop6 }
check __repair { idnQQGoyRnvNPckQKf9_prop6 <=> prop6o }