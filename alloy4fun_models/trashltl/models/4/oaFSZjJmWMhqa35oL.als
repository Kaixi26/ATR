open main
pred idoaFSZjJmWMhqa35oL_prop5 {
	some f : File | eventually f in File and eventually f not in File
}
pred __repair { idoaFSZjJmWMhqa35oL_prop5 }
check __repair { idoaFSZjJmWMhqa35oL_prop5 <=> prop5o }