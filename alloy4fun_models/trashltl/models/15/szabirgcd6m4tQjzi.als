open main
pred idszabirgcd6m4tQjzi_prop16 {
	all f : File | f in Protected implies always f in Protected
}
pred __repair { idszabirgcd6m4tQjzi_prop16 }
check __repair { idszabirgcd6m4tQjzi_prop16 <=> prop16o }