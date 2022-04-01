open main
pred idja8Nj6x4sAmkPi6xw_prop8 {
	eventually some a,b:File | a->b in link implies a in Trash
}
pred __repair { idja8Nj6x4sAmkPi6xw_prop8 }
check __repair { idja8Nj6x4sAmkPi6xw_prop8 <=> prop8o }