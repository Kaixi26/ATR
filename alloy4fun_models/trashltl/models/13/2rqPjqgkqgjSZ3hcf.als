open main
pred id2rqPjqgkqgjSZ3hcf_prop14 {
	all f:File | (f in Trash and f in Protected) implies (f in Trash' and f not in Protected')
}
pred __repair { id2rqPjqgkqgjSZ3hcf_prop14 }
check __repair { id2rqPjqgkqgjSZ3hcf_prop14 <=> prop14o }