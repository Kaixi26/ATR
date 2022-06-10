open main
pred idpR4pffvuBhke5mZD6_prop10 {
	all p: Protected | always p in Protected
}
pred __repair { idpR4pffvuBhke5mZD6_prop10 }
check __repair { idpR4pffvuBhke5mZD6_prop10 <=> prop10o }