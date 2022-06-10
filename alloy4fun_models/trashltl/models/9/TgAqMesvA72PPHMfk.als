open main
pred idTgAqMesvA72PPHMfk_prop10 {
	always(all f: (File & Protected) | always  f in Protected)
}
pred __repair { idTgAqMesvA72PPHMfk_prop10 }
check __repair { idTgAqMesvA72PPHMfk_prop10 <=> prop10o }