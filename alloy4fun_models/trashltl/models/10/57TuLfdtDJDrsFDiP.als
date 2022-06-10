open main
pred id57TuLfdtDJDrsFDiP_prop11 {
	always (some f: File | f not in Protected implies f in Protected')
}
pred __repair { id57TuLfdtDJDrsFDiP_prop11 }
check __repair { id57TuLfdtDJDrsFDiP_prop11 <=> prop11o }