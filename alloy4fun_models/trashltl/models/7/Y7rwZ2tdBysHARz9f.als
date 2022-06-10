open main
pred idY7rwZ2tdBysHARz9f_prop8 {
	all f:File | some f.link implies eventually ( f in Trash)
}
pred __repair { idY7rwZ2tdBysHARz9f_prop8 }
check __repair { idY7rwZ2tdBysHARz9f_prop8 <=> prop8o }