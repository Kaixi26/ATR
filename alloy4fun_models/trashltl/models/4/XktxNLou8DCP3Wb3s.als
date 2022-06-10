open main
pred idXktxNLou8DCP3Wb3s_prop5 {
	always some f : File | eventually f not in File
}
pred __repair { idXktxNLou8DCP3Wb3s_prop5 }
check __repair { idXktxNLou8DCP3Wb3s_prop5 <=> prop5o }