open main
pred idbprAupRe75tWeauBB_prop6 {
	all f : File | f not in Trash and f in Trash' => always f in Trash'
}
pred __repair { idbprAupRe75tWeauBB_prop6 }
check __repair { idbprAupRe75tWeauBB_prop6 <=> prop6o }