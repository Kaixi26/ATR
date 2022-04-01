open main
pred idhuTu9vqKb3xyi4tha_prop4 {
	always some f : File - Trash | eventually f in Trash
}
pred __repair { idhuTu9vqKb3xyi4tha_prop4 }
check __repair { idhuTu9vqKb3xyi4tha_prop4 <=> prop4o }