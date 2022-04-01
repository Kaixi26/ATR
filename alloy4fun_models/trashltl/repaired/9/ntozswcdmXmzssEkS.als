open main
pred idntozswcdmXmzssEkS_prop10 {
	always (all f:Protected | always f in Protected)
}
pred __repair { idntozswcdmXmzssEkS_prop10 }
check __repair { idntozswcdmXmzssEkS_prop10 <=> prop10o }