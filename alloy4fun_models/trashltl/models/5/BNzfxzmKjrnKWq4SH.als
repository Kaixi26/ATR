open main
pred idBNzfxzmKjrnKWq4SH_prop6 {
	all f:File | some (f & Trash) implies always (f in Trash)
}
pred __repair { idBNzfxzmKjrnKWq4SH_prop6 }
check __repair { idBNzfxzmKjrnKWq4SH_prop6 <=> prop6o }