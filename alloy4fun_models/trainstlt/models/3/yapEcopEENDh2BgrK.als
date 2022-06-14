open main
pred idyapEcopEENDh2BgrK_prop4 {
	
	all disj t1, t2 : Train | always t1.pos != t2.pos
}
pred __repair { idyapEcopEENDh2BgrK_prop4 }
check __repair { idyapEcopEENDh2BgrK_prop4 <=> prop4o }