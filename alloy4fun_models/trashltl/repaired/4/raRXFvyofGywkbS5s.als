open main
pred idraRXFvyofGywkbS5s_prop5 {
 	some f: File | eventually always f in Trash and eventually f not in File
}
pred __repair { idraRXFvyofGywkbS5s_prop5 }
check __repair { idraRXFvyofGywkbS5s_prop5 <=> prop5o }