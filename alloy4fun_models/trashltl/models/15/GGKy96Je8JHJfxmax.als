open main
pred idGGKy96Je8JHJfxmax_prop16 {
	all f: File | f in Protected implies historically f in Protected
}
pred __repair { idGGKy96Je8JHJfxmax_prop16 }
check __repair { idGGKy96Je8JHJfxmax_prop16 <=> prop16o }