open main
pred idNvZWCTRtSLhZBkcR9_prop10 {
	all f:File |once f in  Protected implies always f in Protected
}
pred __repair { idNvZWCTRtSLhZBkcR9_prop10 }
check __repair { idNvZWCTRtSLhZBkcR9_prop10 <=> prop10o }