open main
pred id8bZf3BxfbWknRpkWR_prop19 {
	always all p : Protected | p in Protected' until p in Trash
}
pred __repair { id8bZf3BxfbWknRpkWR_prop19 }
check __repair { id8bZf3BxfbWknRpkWR_prop19 <=> prop19o }