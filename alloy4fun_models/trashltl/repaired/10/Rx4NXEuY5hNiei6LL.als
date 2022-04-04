open main
pred idRx4NXEuY5hNiei6LL_prop11 {
	all f : (File - Protected) - Trash | after f in Protected
}
pred __repair { idRx4NXEuY5hNiei6LL_prop11 }
check __repair { idRx4NXEuY5hNiei6LL_prop11 <=> prop11o }