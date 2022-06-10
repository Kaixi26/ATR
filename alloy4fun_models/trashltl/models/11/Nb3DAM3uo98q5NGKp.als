open main
pred idNb3DAM3uo98q5NGKp_prop12 {
	  	all f : Protected | (always eventually f in Trash) implies (always eventually f not in Trash)
}
pred __repair { idNb3DAM3uo98q5NGKp_prop12 }
check __repair { idNb3DAM3uo98q5NGKp_prop12 <=> prop12o }