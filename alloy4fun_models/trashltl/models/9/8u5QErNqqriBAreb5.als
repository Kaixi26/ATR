open main
pred id8u5QErNqqriBAreb5_prop10 {
	(all f:File | always(after f in Protected))
}
pred __repair { id8u5QErNqqriBAreb5_prop10 }
check __repair { id8u5QErNqqriBAreb5_prop10 <=> prop10o }