open main
pred idMRtrcdY7iTWdwpvTH_prop12 {
	all f:File | eventually f in Trash implies eventually f in Trash
}
pred __repair { idMRtrcdY7iTWdwpvTH_prop12 }
check __repair { idMRtrcdY7iTWdwpvTH_prop12 <=> prop12o }