open main
pred id5cpZPWQsRTTx7qfbv_prop12 {
	always (some f: File | eventually always f in Trash)
}
pred __repair { id5cpZPWQsRTTx7qfbv_prop12 }
check __repair { id5cpZPWQsRTTx7qfbv_prop12 <=> prop12o }