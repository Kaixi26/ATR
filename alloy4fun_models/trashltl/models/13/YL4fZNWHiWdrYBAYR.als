open main
pred idYL4fZNWHiWdrYBAYR_prop14 {
	all f : Protected | eventually f in Trash => after f not in Protected
}
pred __repair { idYL4fZNWHiWdrYBAYR_prop14 }
check __repair { idYL4fZNWHiWdrYBAYR_prop14 <=> prop14o }