open main
pred idj7j47iYPN8j4zdN9M_prop5 {
	some f : File | f not in Trash and eventually f in Trash
}
pred __repair { idj7j47iYPN8j4zdN9M_prop5 }
check __repair { idj7j47iYPN8j4zdN9M_prop5 <=> prop5o }