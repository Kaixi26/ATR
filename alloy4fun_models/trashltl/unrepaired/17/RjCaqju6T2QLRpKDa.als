open main
pred idRjCaqju6T2QLRpKDa_prop18 {
	all f : Protected-Trash | always (f in Trash' => always (f not in Protected))
}
pred __repair { idRjCaqju6T2QLRpKDa_prop18 }
check __repair { idRjCaqju6T2QLRpKDa_prop18 <=> prop18o }