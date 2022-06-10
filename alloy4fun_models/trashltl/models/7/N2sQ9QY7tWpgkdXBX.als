open main
pred idN2sQ9QY7tWpgkdXBX_prop8 {
	always(all f1, f2 : File | f1 -> f2 in link implies eventually f1 in Trash and f2 in Trash )
}
pred __repair { idN2sQ9QY7tWpgkdXBX_prop8 }
check __repair { idN2sQ9QY7tWpgkdXBX_prop8 <=> prop8o }