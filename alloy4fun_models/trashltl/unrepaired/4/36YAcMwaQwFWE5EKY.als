open main
pred id36YAcMwaQwFWE5EKY_prop5 {
	always some f : File | eventually f in Trash
}
pred __repair { id36YAcMwaQwFWE5EKY_prop5 }
check __repair { id36YAcMwaQwFWE5EKY_prop5 <=> prop5o }