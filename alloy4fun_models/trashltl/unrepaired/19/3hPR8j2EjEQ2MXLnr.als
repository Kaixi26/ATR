open main
pred id3hPR8j2EjEQ2MXLnr_prop20 {
	all f : File | f in Trash since f not in Protected
}
pred __repair { id3hPR8j2EjEQ2MXLnr_prop20 }
check __repair { id3hPR8j2EjEQ2MXLnr_prop20 <=> prop20o }