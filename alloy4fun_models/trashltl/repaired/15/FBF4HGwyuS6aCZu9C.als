open main
pred idFBF4HGwyuS6aCZu9C_prop16 {
	always all f : Protected | f in Protected implies f in Protected
}
pred __repair { idFBF4HGwyuS6aCZu9C_prop16 }
check __repair { idFBF4HGwyuS6aCZu9C_prop16 <=> prop16o }