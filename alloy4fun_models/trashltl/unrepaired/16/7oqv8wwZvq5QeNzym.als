open main
pred id7oqv8wwZvq5QeNzym_prop17 {
  all f: File |always (eventually f in Trash) implies always after f not in File

}
pred __repair { id7oqv8wwZvq5QeNzym_prop17 }
check __repair { id7oqv8wwZvq5QeNzym_prop17 <=> prop17o }