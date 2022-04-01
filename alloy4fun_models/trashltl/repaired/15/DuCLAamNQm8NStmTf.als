open main
pred idDuCLAamNQm8NStmTf_prop16 {
	all f: File | always once f in Protected implies historically f in Protected
}
pred __repair { idDuCLAamNQm8NStmTf_prop16 }
check __repair { idDuCLAamNQm8NStmTf_prop16 <=> prop16o }