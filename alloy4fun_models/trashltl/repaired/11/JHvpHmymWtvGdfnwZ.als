open main
pred idJHvpHmymWtvGdfnwZ_prop12 {
	always some f : File | eventually f in Trash => eventually f not in Trash
}
pred __repair { idJHvpHmymWtvGdfnwZ_prop12 }
check __repair { idJHvpHmymWtvGdfnwZ_prop12 <=> prop12o }