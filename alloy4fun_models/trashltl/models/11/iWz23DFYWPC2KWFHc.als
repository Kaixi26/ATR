open main
pred idiWz23DFYWPC2KWFHc_prop12 {
	some f:File | eventually f in Trash
}
pred __repair { idiWz23DFYWPC2KWFHc_prop12 }
check __repair { idiWz23DFYWPC2KWFHc_prop12 <=> prop12o }