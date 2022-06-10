open main
pred idwjiTP6x2fxmN4AsZd_prop14 {
	all f : Protected & Trash | after f not in Trash
}
pred __repair { idwjiTP6x2fxmN4AsZd_prop14 }
check __repair { idwjiTP6x2fxmN4AsZd_prop14 <=> prop14o }