open main
pred idtNbxqK3WZCfXWQnfG_prop8 {
	
  	always ( all f:File | some f.^link implies eventually f.^link in Trash )
}
pred __repair { idtNbxqK3WZCfXWQnfG_prop8 }
check __repair { idtNbxqK3WZCfXWQnfG_prop8 <=> prop8o }