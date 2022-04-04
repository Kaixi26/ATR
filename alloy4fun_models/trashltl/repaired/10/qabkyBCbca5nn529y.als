open main
pred idqabkyBCbca5nn529y_prop11 {
	all f : File - Protected - Trash | after f in Protected
}
pred __repair { idqabkyBCbca5nn529y_prop11 }
check __repair { idqabkyBCbca5nn529y_prop11 <=> prop11o }