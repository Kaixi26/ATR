open main
pred idEXMjdEcoTNn3imhGh_prop12 {
	  	some f : File | (always eventually f in Trash) implies (always eventually f not in Trash)
}
pred __repair { idEXMjdEcoTNn3imhGh_prop12 }
check __repair { idEXMjdEcoTNn3imhGh_prop12 <=> prop12o }