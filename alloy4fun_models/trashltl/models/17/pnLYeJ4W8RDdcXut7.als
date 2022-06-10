open main
pred idpnLYeJ4W8RDdcXut7_prop18 {
	always all f: File | f not in Protected releases f in Trash
}
pred __repair { idpnLYeJ4W8RDdcXut7_prop18 }
check __repair { idpnLYeJ4W8RDdcXut7_prop18 <=> prop18o }