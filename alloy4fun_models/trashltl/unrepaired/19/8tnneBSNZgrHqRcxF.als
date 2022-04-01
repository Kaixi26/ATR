open main
pred id8tnneBSNZgrHqRcxF_prop20 {
	always (all f:Protected | f in Trash releases f in Protected)
}
pred __repair { id8tnneBSNZgrHqRcxF_prop20 }
check __repair { id8tnneBSNZgrHqRcxF_prop20 <=> prop20o }