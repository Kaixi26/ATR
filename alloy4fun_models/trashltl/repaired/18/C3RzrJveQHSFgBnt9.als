open main
pred idC3RzrJveQHSFgBnt9_prop19 {
	all p: Protected | p in Protected until p in Trash
}
pred __repair { idC3RzrJveQHSFgBnt9_prop19 }
check __repair { idC3RzrJveQHSFgBnt9_prop19 <=> prop19o }