open main
pred idYMTLonKTa98jzYdwe_prop12 {
	 always (some f:File | (eventually f in Trash) implies always (f in Trash))
}
pred __repair { idYMTLonKTa98jzYdwe_prop12 }
check __repair { idYMTLonKTa98jzYdwe_prop12 <=> prop12o }