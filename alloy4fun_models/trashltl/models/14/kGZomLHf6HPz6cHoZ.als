open main
pred idkGZomLHf6HPz6cHoZ_prop15 {
	eventually (all f:File | eventually f in Trash)
}
pred __repair { idkGZomLHf6HPz6cHoZ_prop15 }
check __repair { idkGZomLHf6HPz6cHoZ_prop15 <=> prop15o }