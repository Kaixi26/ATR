open main
pred idsh4DEvsHrKYS9PycW_prop8 {
	all f : File | (some link.f) implies (eventually f in Trash)
}
pred __repair { idsh4DEvsHrKYS9PycW_prop8 }
check __repair { idsh4DEvsHrKYS9PycW_prop8 <=> prop8o }