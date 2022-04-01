open main
pred idvrN8yPcnBcobSX7uE_prop11 {
	all f : File - Protected | always (after f in Protected) 
}
pred __repair { idvrN8yPcnBcobSX7uE_prop11 }
check __repair { idvrN8yPcnBcobSX7uE_prop11 <=> prop11o }