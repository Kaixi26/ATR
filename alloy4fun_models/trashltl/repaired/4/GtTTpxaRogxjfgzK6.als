open main
pred idGtTTpxaRogxjfgzK6_prop5 {
	some f:Trash | eventually no Trash & f
}
pred __repair { idGtTTpxaRogxjfgzK6_prop5 }
check __repair { idGtTTpxaRogxjfgzK6_prop5 <=> prop5o }