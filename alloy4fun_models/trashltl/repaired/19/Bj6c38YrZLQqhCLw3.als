open main
pred idBj6c38YrZLQqhCLw3_prop20 {
 	always (all f:File | f in Trash  since  (f not in Protected) )
}
pred __repair { idBj6c38YrZLQqhCLw3_prop20 }
check __repair { idBj6c38YrZLQqhCLw3_prop20 <=> prop20o }