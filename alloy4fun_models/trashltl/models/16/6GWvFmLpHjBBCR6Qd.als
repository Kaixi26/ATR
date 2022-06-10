open main
pred id6GWvFmLpHjBBCR6Qd_prop17 {
	always all f : Trash | after f not in Trash
}
pred __repair { id6GWvFmLpHjBBCR6Qd_prop17 }
check __repair { id6GWvFmLpHjBBCR6Qd_prop17 <=> prop17o }