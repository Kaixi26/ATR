open main
pred idaePBdqXpQ9B6w9Bjv_prop10 {
	always (all f:File&Protected | always f in Protected)
}
pred __repair { idaePBdqXpQ9B6w9Bjv_prop10 }
check __repair { idaePBdqXpQ9B6w9Bjv_prop10 <=> prop10o }