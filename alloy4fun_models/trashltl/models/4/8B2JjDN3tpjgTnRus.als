open main
pred id8B2JjDN3tpjgTnRus_prop5 {
	some f:File | eventually f in Trash and f.~link in Trash
}
pred __repair { id8B2JjDN3tpjgTnRus_prop5 }
check __repair { id8B2JjDN3tpjgTnRus_prop5 <=> prop5o }