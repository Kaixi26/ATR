open main
pred idzEx7NSgJZCMSDFgoZ_prop20 {
 	always (all f:File | f in Trash  since  no(f & Protected) )
}
pred __repair { idzEx7NSgJZCMSDFgoZ_prop20 }
check __repair { idzEx7NSgJZCMSDFgoZ_prop20 <=> prop20o }