open main
pred idZCDfF8SjWdkphD5B2_prop10 {
	always (all f:File | after always f in Protected)
}
pred __repair { idZCDfF8SjWdkphD5B2_prop10 }
check __repair { idZCDfF8SjWdkphD5B2_prop10 <=> prop10o }