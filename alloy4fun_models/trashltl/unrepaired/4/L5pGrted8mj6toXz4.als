open main
pred idL5pGrted8mj6toXz4_prop5 {
	some f: File | eventually (f in Trash)
}
pred __repair { idL5pGrted8mj6toXz4_prop5 }
check __repair { idL5pGrted8mj6toXz4_prop5 <=> prop5o }