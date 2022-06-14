open main
pred id5DABu7gEFeYvv8cva_prop3 {
	
	always all t: Train | some tr: Track | t in pos.tr implies t' in pos.tr
}
pred __repair { id5DABu7gEFeYvv8cva_prop3 }
check __repair { id5DABu7gEFeYvv8cva_prop3 <=> prop3o }