open main
pred idbm6b83yckqd2pafKA_prop11 {
	always all f:File | f in Protected'
}
pred __repair { idbm6b83yckqd2pafKA_prop11 }
check __repair { idbm6b83yckqd2pafKA_prop11 <=> prop11o }