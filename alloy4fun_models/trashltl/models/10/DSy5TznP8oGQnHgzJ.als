open main
pred idDSy5TznP8oGQnHgzJ_prop11 {
	all f : File | f not in Protected and after f in Protected
}
pred __repair { idDSy5TznP8oGQnHgzJ_prop11 }
check __repair { idDSy5TznP8oGQnHgzJ_prop11 <=> prop11o }