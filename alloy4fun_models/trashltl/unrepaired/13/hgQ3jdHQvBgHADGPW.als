open main
pred idhgQ3jdHQvBgHADGPW_prop14 {
	all f : File | f in Trash' implies  f not in Protected' 
}
pred __repair { idhgQ3jdHQvBgHADGPW_prop14 }
check __repair { idhgQ3jdHQvBgHADGPW_prop14 <=> prop14o }