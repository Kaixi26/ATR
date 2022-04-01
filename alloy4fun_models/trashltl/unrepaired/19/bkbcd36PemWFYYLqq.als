open main
pred idbkbcd36PemWFYYLqq_prop20 {
	always all f : File | f in Trash since f in File - Protected
}
pred __repair { idbkbcd36PemWFYYLqq_prop20 }
check __repair { idbkbcd36PemWFYYLqq_prop20 <=> prop20o }