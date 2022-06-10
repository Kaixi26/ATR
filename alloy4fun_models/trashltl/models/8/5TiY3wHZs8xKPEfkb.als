open main
pred id5TiY3wHZs8xKPEfkb_prop9 {
	always (all f:Protected | f not in Trash' and historically f not in Trash)
  	
}
pred __repair { id5TiY3wHZs8xKPEfkb_prop9 }
check __repair { id5TiY3wHZs8xKPEfkb_prop9 <=> prop9o }