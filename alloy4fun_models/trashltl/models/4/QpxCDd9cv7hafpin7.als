open main
pred idQpxCDd9cv7hafpin7_prop5 {
 	some f : File | always (f in File until f not in File)
}
pred __repair { idQpxCDd9cv7hafpin7_prop5 }
check __repair { idQpxCDd9cv7hafpin7_prop5 <=> prop5o }