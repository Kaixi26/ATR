open main
pred id4NSBmx4Rafe9AeHfM_prop12 {
	always some f:File | f not in Trash implies f in Trash'
}
pred __repair { id4NSBmx4Rafe9AeHfM_prop12 }
check __repair { id4NSBmx4Rafe9AeHfM_prop12 <=> prop12o }