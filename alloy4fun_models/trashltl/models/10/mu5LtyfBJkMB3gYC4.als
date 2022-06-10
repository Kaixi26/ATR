open main
pred idmu5LtyfBJkMB3gYC4_prop11 {
	after (all f:(File-Trash) | f in Protected)
}
pred __repair { idmu5LtyfBJkMB3gYC4_prop11 }
check __repair { idmu5LtyfBJkMB3gYC4_prop11 <=> prop11o }