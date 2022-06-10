open main
pred idsFL94joPERGbCRuQC_prop16 {
	historically all f:File | f in Protected' implies f in Protected 
}
pred __repair { idsFL94joPERGbCRuQC_prop16 }
check __repair { idsFL94joPERGbCRuQC_prop16 <=> prop16o }