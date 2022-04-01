open main
pred idSuxoPuTMM4a3aDwiQ_prop10 { 
	always all f:File | once f in Protected implies always f in Protected
}
pred __repair { idSuxoPuTMM4a3aDwiQ_prop10 }
check __repair { idSuxoPuTMM4a3aDwiQ_prop10 <=> prop10o }