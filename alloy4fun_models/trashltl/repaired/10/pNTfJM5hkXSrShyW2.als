open main
pred idpNTfJM5hkXSrShyW2_prop11 {
	always (some (File - Protected) implies (after((File - Protected) in Protected)))
}
pred __repair { idpNTfJM5hkXSrShyW2_prop11 }
check __repair { idpNTfJM5hkXSrShyW2_prop11 <=> prop11o }