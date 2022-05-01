open main
pred idiYptypBLoDASSyrve_prop10 {
	all f : Protected | always f in Protected
}
pred __repair { idiYptypBLoDASSyrve_prop10 }
check __repair { idiYptypBLoDASSyrve_prop10 <=> prop10o }