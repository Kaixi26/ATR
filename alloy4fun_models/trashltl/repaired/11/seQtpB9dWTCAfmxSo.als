open main
pred idseQtpB9dWTCAfmxSo_prop12 {
	eventually some f:File | f in Trash releases always f'=Trash
}
pred __repair { idseQtpB9dWTCAfmxSo_prop12 }
check __repair { idseQtpB9dWTCAfmxSo_prop12 <=> prop12o }