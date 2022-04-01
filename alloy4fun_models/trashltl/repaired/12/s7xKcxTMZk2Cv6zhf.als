open main
pred ids7xKcxTMZk2Cv6zhf_prop13 {
	all f:File | historically  (f in Trash) 
}
pred __repair { ids7xKcxTMZk2Cv6zhf_prop13 }
check __repair { ids7xKcxTMZk2Cv6zhf_prop13 <=> prop13o }