open main
pred idwD5EGrc5eyMybsBXG_prop18 {
	always all p : Protected | p in Protected until p in Trash and p not in Protected 
}
pred __repair { idwD5EGrc5eyMybsBXG_prop18 }
check __repair { idwD5EGrc5eyMybsBXG_prop18 <=> prop18o }