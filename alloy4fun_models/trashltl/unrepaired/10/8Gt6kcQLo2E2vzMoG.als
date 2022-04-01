open main
pred id8Gt6kcQLo2E2vzMoG_prop11 {
	all f : File + Trash | after f in Protected
}
pred __repair { id8Gt6kcQLo2E2vzMoG_prop11 }
check __repair { id8Gt6kcQLo2E2vzMoG_prop11 <=> prop11o }