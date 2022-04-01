open main
pred idkS9KmXCCffxTWLSHA_prop10 {
	all f : File | once f in Protected implies always f in Protected
}
pred __repair { idkS9KmXCCffxTWLSHA_prop10 }
check __repair { idkS9KmXCCffxTWLSHA_prop10 <=> prop10o }