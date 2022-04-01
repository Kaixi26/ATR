open main
pred ideKChcb37BHi7v3746_prop12 {
	always some f : File | eventually f in Trash => always f in Trash
}
pred __repair { ideKChcb37BHi7v3746_prop12 }
check __repair { ideKChcb37BHi7v3746_prop12 <=> prop12o }