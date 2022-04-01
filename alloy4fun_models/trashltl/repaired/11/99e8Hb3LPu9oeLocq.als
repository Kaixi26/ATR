open main
pred id99e8Hb3LPu9oeLocq_prop12 {
	all f: File | eventually f in Trash and after always f in Trash
}
pred __repair { id99e8Hb3LPu9oeLocq_prop12 }
check __repair { id99e8Hb3LPu9oeLocq_prop12 <=> prop12o }