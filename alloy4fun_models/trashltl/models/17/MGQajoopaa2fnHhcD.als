open main
pred idMGQajoopaa2fnHhcD_prop18 {
	always all p: Protected | always p not in Protected implies before p in Trash
}
pred __repair { idMGQajoopaa2fnHhcD_prop18 }
check __repair { idMGQajoopaa2fnHhcD_prop18 <=> prop18o }