open main
pred idzYQSqarrz45HetZqP_prop19 {
	always (all f : Protected | f in Trash until f in Protected)
}
pred __repair { idzYQSqarrz45HetZqP_prop19 }
check __repair { idzYQSqarrz45HetZqP_prop19 <=> prop19o }