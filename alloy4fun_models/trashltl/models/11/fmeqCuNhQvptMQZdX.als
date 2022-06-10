open main
pred idfmeqCuNhQvptMQZdX_prop12 {
	always (all f: File | eventually f in Trash)
}
pred __repair { idfmeqCuNhQvptMQZdX_prop12 }
check __repair { idfmeqCuNhQvptMQZdX_prop12 <=> prop12o }