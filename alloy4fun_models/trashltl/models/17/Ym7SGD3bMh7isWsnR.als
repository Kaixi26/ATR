open main
pred idYm7SGD3bMh7isWsnR_prop18 {
	always (all f : Protected | f in Trash releases always f in Protected)
}
pred __repair { idYm7SGD3bMh7isWsnR_prop18 }
check __repair { idYm7SGD3bMh7isWsnR_prop18 <=> prop18o }