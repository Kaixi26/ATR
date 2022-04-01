open main
pred idMoAur9XPowJPtgJZa_prop12 {
	some f:File | eventually f in Trash
}
pred __repair { idMoAur9XPowJPtgJZa_prop12 }
check __repair { idMoAur9XPowJPtgJZa_prop12 <=> prop12o }