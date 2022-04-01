open main
pred idA6ihzdLKKEG8mKHDn_prop14 {
	always some (Protected & Trash) implies no (Protected' & (Protected & Trash)) 
}
pred __repair { idA6ihzdLKKEG8mKHDn_prop14 }
check __repair { idA6ihzdLKKEG8mKHDn_prop14 <=> prop14o }