open main
pred idADTf2MQLPkPSeWjvc_prop18 {
	always all t: Trash | once t in Protected and t not in Protected
}
pred __repair { idADTf2MQLPkPSeWjvc_prop18 }
check __repair { idADTf2MQLPkPSeWjvc_prop18 <=> prop18o }