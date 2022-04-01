open main
pred idRoXhZLWpwMdYzMfye_prop8 {
all disj f1,f2 : File | f1->f2 in link implies eventually f2 in Trash
}
pred __repair { idRoXhZLWpwMdYzMfye_prop8 }
check __repair { idRoXhZLWpwMdYzMfye_prop8 <=> prop8o }