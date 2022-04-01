open main
pred idiX7ybZbEQiTND7tnF_prop18 {
	always all p : Protected | p in Protected until p in Trash 
}
pred __repair { idiX7ybZbEQiTND7tnF_prop18 }
check __repair { idiX7ybZbEQiTND7tnF_prop18 <=> prop18o }