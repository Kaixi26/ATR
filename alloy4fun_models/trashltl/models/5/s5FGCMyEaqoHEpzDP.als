open main
pred ids5FGCMyEaqoHEpzDP_prop6 {
	always ( some f:File| f not in Trash  and after (f in Trash and after always f in Trash))
}
pred __repair { ids5FGCMyEaqoHEpzDP_prop6 }
check __repair { ids5FGCMyEaqoHEpzDP_prop6 <=> prop6o }