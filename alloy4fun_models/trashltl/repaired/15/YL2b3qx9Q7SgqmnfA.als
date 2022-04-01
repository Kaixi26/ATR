open main
pred idYL2b3qx9Q7SgqmnfA_prop16 {
	all f: File | once f in Protected implies historically f in Protected
}
pred __repair { idYL2b3qx9Q7SgqmnfA_prop16 }
check __repair { idYL2b3qx9Q7SgqmnfA_prop16 <=> prop16o }