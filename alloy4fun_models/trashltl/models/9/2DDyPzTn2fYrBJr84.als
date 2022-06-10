open main
pred id2DDyPzTn2fYrBJr84_prop10 {
	
  	all p: Protected | historically p in Protected and always p in Protected
}
pred __repair { id2DDyPzTn2fYrBJr84_prop10 }
check __repair { id2DDyPzTn2fYrBJr84_prop10 <=> prop10o }