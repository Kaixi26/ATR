open main
pred idAmpMtMsf8qiLqDfqs_prop5 {
	eventually some f:File | File' = File - f
}
pred __repair { idAmpMtMsf8qiLqDfqs_prop5 }
check __repair { idAmpMtMsf8qiLqDfqs_prop5 <=> prop5o }