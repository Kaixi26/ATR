open main
pred idpwh3Gm8qAyXroSsyL_prop12 {
	eventually (always some f:File | f not in Trash implies f in Trash')
}
pred __repair { idpwh3Gm8qAyXroSsyL_prop12 }
check __repair { idpwh3Gm8qAyXroSsyL_prop12 <=> prop12o }