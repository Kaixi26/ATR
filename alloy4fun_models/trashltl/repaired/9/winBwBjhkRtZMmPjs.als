open main
pred idwinBwBjhkRtZMmPjs_prop10 {
	all f : File | f in Protected => always f in Protected
}
pred __repair { idwinBwBjhkRtZMmPjs_prop10 }
check __repair { idwinBwBjhkRtZMmPjs_prop10 <=> prop10o }