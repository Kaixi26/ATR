open main
pred idMFTgQM2vsRkuHQGgu_prop12 {
	eventually (always some f:File | f not in (Trash & Protected) implies f in Trash')
}
pred __repair { idMFTgQM2vsRkuHQGgu_prop12 }
check __repair { idMFTgQM2vsRkuHQGgu_prop12 <=> prop12o }