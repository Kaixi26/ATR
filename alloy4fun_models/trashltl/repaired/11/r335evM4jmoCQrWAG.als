open main
pred idr335evM4jmoCQrWAG_prop12 {
	 (all f:File&Trash | always f in Trash)
}
pred __repair { idr335evM4jmoCQrWAG_prop12 }
check __repair { idr335evM4jmoCQrWAG_prop12 <=> prop12o }