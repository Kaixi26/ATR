open main
pred idmZbJmPW6aFRYmzNzp_prop12 {
	eventually always  some f:File | f not in Trash implies f in Trash'
}
pred __repair { idmZbJmPW6aFRYmzNzp_prop12 }
check __repair { idmZbJmPW6aFRYmzNzp_prop12 <=> prop12o }