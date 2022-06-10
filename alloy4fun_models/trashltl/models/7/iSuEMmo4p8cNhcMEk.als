open main
pred idiSuEMmo4p8cNhcMEk_prop8 {
	all l: File.link | eventually l in Trash
}
pred __repair { idiSuEMmo4p8cNhcMEk_prop8 }
check __repair { idiSuEMmo4p8cNhcMEk_prop8 <=> prop8o }