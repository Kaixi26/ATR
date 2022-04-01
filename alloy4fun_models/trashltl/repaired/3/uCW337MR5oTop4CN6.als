open main
pred iduCW337MR5oTop4CN6_prop4 {
	some f:File | eventually f in Trash
}
pred __repair { iduCW337MR5oTop4CN6_prop4 }
check __repair { iduCW337MR5oTop4CN6_prop4 <=> prop4o }