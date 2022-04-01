open main
pred idiS75adyd7di8zyDKD_prop15 {
	(all f:File | eventually f in Trash)
}
pred __repair { idiS75adyd7di8zyDKD_prop15 }
check __repair { idiS75adyd7di8zyDKD_prop15 <=> prop15o }