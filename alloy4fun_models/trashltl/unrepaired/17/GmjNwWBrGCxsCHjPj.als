open main
pred idGmjNwWBrGCxsCHjPj_prop18 {
	all f : Protected | always (eventually f in Trash => f not in Protected)
}
pred __repair { idGmjNwWBrGCxsCHjPj_prop18 }
check __repair { idGmjNwWBrGCxsCHjPj_prop18 <=> prop18o }