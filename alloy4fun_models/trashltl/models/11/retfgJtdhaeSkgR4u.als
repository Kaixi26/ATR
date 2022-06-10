open main
pred idretfgJtdhaeSkgR4u_prop12 {
	always all f:File | eventually (f not in Trash implies f in Trash')
}
pred __repair { idretfgJtdhaeSkgR4u_prop12 }
check __repair { idretfgJtdhaeSkgR4u_prop12 <=> prop12o }