open main
pred idpxFWPyYscfCc9Hgwe_prop11 {
	always all f:File | f in Protected' iff f not in Protected
}
pred __repair { idpxFWPyYscfCc9Hgwe_prop11 }
check __repair { idpxFWPyYscfCc9Hgwe_prop11 <=> prop11o }