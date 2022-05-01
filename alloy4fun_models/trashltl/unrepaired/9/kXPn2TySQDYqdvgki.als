open main
pred idkXPn2TySQDYqdvgki_prop10 {
	always all p:Protected | always p in Protected
}
pred __repair { idkXPn2TySQDYqdvgki_prop10 }
check __repair { idkXPn2TySQDYqdvgki_prop10 <=> prop10o }