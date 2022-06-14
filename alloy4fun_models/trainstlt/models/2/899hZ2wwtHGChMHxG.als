open main
pred id899hZ2wwtHGChMHxG_prop3 {
	
	always( all t:Train | one t.pos)
}
pred __repair { id899hZ2wwtHGChMHxG_prop3 }
check __repair { id899hZ2wwtHGChMHxG_prop3 <=> prop3o }