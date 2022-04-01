open main
pred idBDHfCrqynzXxL6gtH_prop12 {
	some f : File | eventually f in Trash => eventually f not in Trash
}
pred __repair { idBDHfCrqynzXxL6gtH_prop12 }
check __repair { idBDHfCrqynzXxL6gtH_prop12 <=> prop12o }