open main
pred idXyYvtAEweRSCjCRD5_prop5 {
	some f : File | eventually f not in (File + Protected + Trash)
}
pred __repair { idXyYvtAEweRSCjCRD5_prop5 }
check __repair { idXyYvtAEweRSCjCRD5_prop5 <=> prop5o }