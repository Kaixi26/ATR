open main
pred idqKBNpcpLms6b8xAXr_prop8 {
	always all f:File | some f.link implies eventually f.link in Trash 
}
pred __repair { idqKBNpcpLms6b8xAXr_prop8 }
check __repair { idqKBNpcpLms6b8xAXr_prop8 <=> prop8o }