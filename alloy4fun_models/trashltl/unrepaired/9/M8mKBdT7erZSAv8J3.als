open main
pred idM8mKBdT7erZSAv8J3_prop10 {
	all p : Protected | p in Protected => always p in Protected
}
pred __repair { idM8mKBdT7erZSAv8J3_prop10 }
check __repair { idM8mKBdT7erZSAv8J3_prop10 <=> prop10o }