open main
pred id4nsnayKaTKYhmfE3R_prop3 {
	
	always all t: Train | some tr: Track | t in tr implies t' in tr
}
pred __repair { id4nsnayKaTKYhmfE3R_prop3 }
check __repair { id4nsnayKaTKYhmfE3R_prop3 <=> prop3o }