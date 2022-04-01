open main
pred idGwKPeEpzZvPktBExE_prop12 {
	always( some f: File | eventually always f in Trash)
}
pred __repair { idGwKPeEpzZvPktBExE_prop12 }
check __repair { idGwKPeEpzZvPktBExE_prop12 <=> prop12o }