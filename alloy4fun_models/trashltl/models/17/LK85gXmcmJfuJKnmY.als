open main
pred idLK85gXmcmJfuJKnmY_prop18 {
	always all f:Protected | f not in Protected' implies f in Trash' 
}
pred __repair { idLK85gXmcmJfuJKnmY_prop18 }
check __repair { idLK85gXmcmJfuJKnmY_prop18 <=> prop18o }