open main
pred idjwDPw44gCoLZjsYpo_prop12 {
	always all f:File | eventually f in Trash && f in Trash until f not in Trash
}
pred __repair { idjwDPw44gCoLZjsYpo_prop12 }
check __repair { idjwDPw44gCoLZjsYpo_prop12 <=> prop12o }