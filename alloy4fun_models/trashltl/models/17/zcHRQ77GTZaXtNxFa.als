open main
pred idzcHRQ77GTZaXtNxFa_prop18 {
	all p: Protected | always p not in Protected implies before p in Trash
}
pred __repair { idzcHRQ77GTZaXtNxFa_prop18 }
check __repair { idzcHRQ77GTZaXtNxFa_prop18 <=> prop18o }