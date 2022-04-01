open main
pred idR7Zhx7hoDvWNEfCLN_prop10 {
	always (all f:Protected | always after f in Protected)
}
pred __repair { idR7Zhx7hoDvWNEfCLN_prop10 }
check __repair { idR7Zhx7hoDvWNEfCLN_prop10 <=> prop10o }