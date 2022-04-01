open main
pred idh8DRqHzrLPptf2c2H_prop12 {
	some f : File | eventually f in Trash => eventually f not in Trash
}
pred __repair { idh8DRqHzrLPptf2c2H_prop12 }
check __repair { idh8DRqHzrLPptf2c2H_prop12 <=> prop12o }