open main
pred idsNPdMnuPFcKmSRaRi_prop17 {
	always (all f : File | after f in Trash)
}
pred __repair { idsNPdMnuPFcKmSRaRi_prop17 }
check __repair { idsNPdMnuPFcKmSRaRi_prop17 <=> prop17o }