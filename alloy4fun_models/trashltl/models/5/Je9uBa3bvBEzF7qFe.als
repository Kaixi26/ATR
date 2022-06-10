open main
pred idJe9uBa3bvBEzF7qFe_prop6 {
	all f : File | always (f in Trash implies always f in Trash)
}
pred __repair { idJe9uBa3bvBEzF7qFe_prop6 }
check __repair { idJe9uBa3bvBEzF7qFe_prop6 <=> prop6o }