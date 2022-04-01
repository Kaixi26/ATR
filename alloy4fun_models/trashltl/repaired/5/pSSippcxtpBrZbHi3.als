open main
pred idpSSippcxtpBrZbHi3_prop6 {
	always some f:File | (not (always f in Trash)) releases (f in Trash and after f in Trash)
}
pred __repair { idpSSippcxtpBrZbHi3_prop6 }
check __repair { idpSSippcxtpBrZbHi3_prop6 <=> prop6o }