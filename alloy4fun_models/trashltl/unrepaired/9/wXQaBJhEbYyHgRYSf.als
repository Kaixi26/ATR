open main
pred idwXQaBJhEbYyHgRYSf_prop10 {
	always(all f: (File & Protected) | always f in Protected)
}
pred __repair { idwXQaBJhEbYyHgRYSf_prop10 }
check __repair { idwXQaBJhEbYyHgRYSf_prop10 <=> prop10o }