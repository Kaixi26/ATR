open main
pred idgpcNsf9w75hnhxxCd_prop10 {
	always (all f:File&Protected | f in Protected)
}
pred __repair { idgpcNsf9w75hnhxxCd_prop10 }
check __repair { idgpcNsf9w75hnhxxCd_prop10 <=> prop10o }