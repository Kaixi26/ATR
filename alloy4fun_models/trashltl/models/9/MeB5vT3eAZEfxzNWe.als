open main
pred idMeB5vT3eAZEfxzNWe_prop10 {
	always (all f:File | always f in Protected)
}
pred __repair { idMeB5vT3eAZEfxzNWe_prop10 }
check __repair { idMeB5vT3eAZEfxzNWe_prop10 <=> prop10o }