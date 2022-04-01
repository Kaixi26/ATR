open main
pred idtqi8fRJdtxssZtAyT_prop15 {
	eventually (all f:File | eventually f in Trash)
}
pred __repair { idtqi8fRJdtxssZtAyT_prop15 }
check __repair { idtqi8fRJdtxssZtAyT_prop15 <=> prop15o }