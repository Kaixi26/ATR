open main
pred idpNBcmyfQsu8t3ufKt_prop6 {
	always ((some File) implies (always File in File'))
}
pred __repair { idpNBcmyfQsu8t3ufKt_prop6 }
check __repair { idpNBcmyfQsu8t3ufKt_prop6 <=> prop6o }