open main
pred id62ipFbaKuvkhD2AMC_prop8 {
	always(eventually  (File.link in Trash and link.File in Trash))
}
pred __repair { id62ipFbaKuvkhD2AMC_prop8 }
check __repair { id62ipFbaKuvkhD2AMC_prop8 <=> prop8o }