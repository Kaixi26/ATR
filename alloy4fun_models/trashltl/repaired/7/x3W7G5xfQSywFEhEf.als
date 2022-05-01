open main
pred idx3W7G5xfQSywFEhEf_prop8 {
	all f1:File , f2:File | f1.link = f2 implies eventually some f2 & Trash
}
pred __repair { idx3W7G5xfQSywFEhEf_prop8 }
check __repair { idx3W7G5xfQSywFEhEf_prop8 <=> prop8o }