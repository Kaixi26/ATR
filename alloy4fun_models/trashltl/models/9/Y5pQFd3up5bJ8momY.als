open main
pred idY5pQFd3up5bJ8momY_prop10 {
	always all p : Protected | p in Protected => always p in Protected
}
pred __repair { idY5pQFd3up5bJ8momY_prop10 }
check __repair { idY5pQFd3up5bJ8momY_prop10 <=> prop10o }