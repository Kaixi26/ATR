open main
pred idNo3KEsTucKoEoDBFL_prop5 {
	some f:File-Protected | eventually f in Trash
}
pred __repair { idNo3KEsTucKoEoDBFL_prop5 }
check __repair { idNo3KEsTucKoEoDBFL_prop5 <=> prop5o }