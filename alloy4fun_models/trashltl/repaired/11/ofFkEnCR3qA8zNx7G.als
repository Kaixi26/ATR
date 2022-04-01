open main
pred idofFkEnCR3qA8zNx7G_prop12 {
	eventually always some f:File | f not in Trash implies f in Trash'
}
pred __repair { idofFkEnCR3qA8zNx7G_prop12 }
check __repair { idofFkEnCR3qA8zNx7G_prop12 <=> prop12o }