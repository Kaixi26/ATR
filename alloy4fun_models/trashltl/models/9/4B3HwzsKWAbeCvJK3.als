open main
pred id4B3HwzsKWAbeCvJK3_prop10 {
	all f:File |(always f in Protected) since f in  Protected  
}
pred __repair { id4B3HwzsKWAbeCvJK3_prop10 }
check __repair { id4B3HwzsKWAbeCvJK3_prop10 <=> prop10o }