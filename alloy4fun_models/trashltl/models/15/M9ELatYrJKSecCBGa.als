open main
pred idM9ELatYrJKSecCBGa_prop16 {
	all f: File | eventually always f in Protected implies historically f in Protected
}
pred __repair { idM9ELatYrJKSecCBGa_prop16 }
check __repair { idM9ELatYrJKSecCBGa_prop16 <=> prop16o }