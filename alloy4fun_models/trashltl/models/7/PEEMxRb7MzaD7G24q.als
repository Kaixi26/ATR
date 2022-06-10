open main
pred idPEEMxRb7MzaD7G24q_prop8 {
	always all f : File.link | eventually f in Trash
}
pred __repair { idPEEMxRb7MzaD7G24q_prop8 }
check __repair { idPEEMxRb7MzaD7G24q_prop8 <=> prop8o }