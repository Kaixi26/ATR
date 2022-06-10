open main
pred idNK9WbDbPs2XRXw8Xo_prop20 {
	always all f : File |  f in Trash triggered f not in Protected  
}
pred __repair { idNK9WbDbPs2XRXw8Xo_prop20 }
check __repair { idNK9WbDbPs2XRXw8Xo_prop20 <=> prop20o }