open main
pred idumd8WeTYthg6pgzgR_prop5 {
	some f:File | eventually f in Trash and f.~link in Trash
}
pred __repair { idumd8WeTYthg6pgzgR_prop5 }
check __repair { idumd8WeTYthg6pgzgR_prop5 <=> prop5o }