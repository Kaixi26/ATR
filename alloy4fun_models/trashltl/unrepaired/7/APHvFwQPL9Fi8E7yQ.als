open main
pred idAPHvFwQPL9Fi8E7yQ_prop8 {
	all f : File | some f.link => eventually (f.link in Trash)
}
pred __repair { idAPHvFwQPL9Fi8E7yQ_prop8 }
check __repair { idAPHvFwQPL9Fi8E7yQ_prop8 <=> prop8o }