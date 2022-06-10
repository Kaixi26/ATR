open main
pred id2HZoTqLhsSMK7FFGL_prop16 {
	all f : File | f in Protected => historically f in Protected
}
pred __repair { id2HZoTqLhsSMK7FFGL_prop16 }
check __repair { id2HZoTqLhsSMK7FFGL_prop16 <=> prop16o }