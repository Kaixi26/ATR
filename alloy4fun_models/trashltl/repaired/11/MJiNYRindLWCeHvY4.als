open main
pred idMJiNYRindLWCeHvY4_prop12 {
	eventually always all f:File | f not in Trash implies f in Trash'
}
pred __repair { idMJiNYRindLWCeHvY4_prop12 }
check __repair { idMJiNYRindLWCeHvY4_prop12 <=> prop12o }