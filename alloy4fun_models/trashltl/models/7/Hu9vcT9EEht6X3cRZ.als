open main
pred idHu9vcT9EEht6X3cRZ_prop8 {
	always (some f : File | some f.link implies eventually f in Trash)
}
pred __repair { idHu9vcT9EEht6X3cRZ_prop8 }
check __repair { idHu9vcT9EEht6X3cRZ_prop8 <=> prop8o }