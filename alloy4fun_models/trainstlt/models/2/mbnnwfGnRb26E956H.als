open main
pred idmbnnwfGnRb26E956H_prop3 {
	
	always all t: Train | always one tr: Track | always (t in pos.tr implies t' in pos.tr)
}
pred __repair { idmbnnwfGnRb26E956H_prop3 }
check __repair { idmbnnwfGnRb26E956H_prop3 <=> prop3o }