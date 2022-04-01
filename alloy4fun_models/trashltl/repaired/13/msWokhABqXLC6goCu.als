open main
pred idmsWokhABqXLC6goCu_prop14 {
	all f : Protected & Trash | f in Trash' implies (after f not in Protected') 
}
pred __repair { idmsWokhABqXLC6goCu_prop14 }
check __repair { idmsWokhABqXLC6goCu_prop14 <=> prop14o }