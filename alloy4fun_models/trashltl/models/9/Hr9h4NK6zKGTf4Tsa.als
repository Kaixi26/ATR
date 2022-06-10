open main
pred idHr9h4NK6zKGTf4Tsa_prop10 {
	always(all f : (File & Protected) | always (f in Protected))
}
pred __repair { idHr9h4NK6zKGTf4Tsa_prop10 }
check __repair { idHr9h4NK6zKGTf4Tsa_prop10 <=> prop10o }