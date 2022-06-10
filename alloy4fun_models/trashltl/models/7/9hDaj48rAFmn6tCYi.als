open main
pred id9hDaj48rAFmn6tCYi_prop8 {
	always all f,g: File| f->g in link implies eventually always f in Trash
}
pred __repair { id9hDaj48rAFmn6tCYi_prop8 }
check __repair { id9hDaj48rAFmn6tCYi_prop8 <=> prop8o }