open main
pred iduqeT6aLoyAEimy6QH_prop10 {
	always all f : File | f in Protected implies always f in Protected'
}
pred __repair { iduqeT6aLoyAEimy6QH_prop10 }
check __repair { iduqeT6aLoyAEimy6QH_prop10 <=> prop10o }