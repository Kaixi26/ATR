open main
pred idWecQozJpqnAwD5CYM_prop5 {
	
	all t : Train | no (t.pos & Exit) implies (t.pos' in t.pos.prox) else (Train' = Train - t)
}
pred __repair { idWecQozJpqnAwD5CYM_prop5 }
check __repair { idWecQozJpqnAwD5CYM_prop5 <=> prop5o }