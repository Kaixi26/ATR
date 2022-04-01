open main
pred id2Jr77fRqSxANc5qRp_prop6 {
	some f:File | f in Trash releases always (f in Trash)
}
pred __repair { id2Jr77fRqSxANc5qRp_prop6 }
check __repair { id2Jr77fRqSxANc5qRp_prop6 <=> prop6o }