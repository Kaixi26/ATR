open main
pred idHwEkoA6z4x6SrdDC4_prop10 {
	(all f:Protected | always after f in Protected)
}
pred __repair { idHwEkoA6z4x6SrdDC4_prop10 }
check __repair { idHwEkoA6z4x6SrdDC4_prop10 <=> prop10o }