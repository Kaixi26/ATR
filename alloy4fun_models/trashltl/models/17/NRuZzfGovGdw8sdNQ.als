open main
pred idNRuZzfGovGdw8sdNQ_prop18 {
	all f: File | once (f not in Protected releases f in Trash)
}
pred __repair { idNRuZzfGovGdw8sdNQ_prop18 }
check __repair { idNRuZzfGovGdw8sdNQ_prop18 <=> prop18o }