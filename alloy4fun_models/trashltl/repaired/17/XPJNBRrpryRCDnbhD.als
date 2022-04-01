open main
pred idXPJNBRrpryRCDnbhD_prop18 {
	all p: Protected | always p not in Protected implies before p in Trash
}
pred __repair { idXPJNBRrpryRCDnbhD_prop18 }
check __repair { idXPJNBRrpryRCDnbhD_prop18 <=> prop18o }