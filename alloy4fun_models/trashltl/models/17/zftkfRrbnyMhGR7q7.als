open main
pred idzftkfRrbnyMhGR7q7_prop18 {
	always (all f:Protected | f in Trash-Protected triggered always f not in Protected)
}
pred __repair { idzftkfRrbnyMhGR7q7_prop18 }
check __repair { idzftkfRrbnyMhGR7q7_prop18 <=> prop18o }