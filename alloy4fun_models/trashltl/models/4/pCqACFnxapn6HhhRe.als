open main
pred idpCqACFnxapn6HhhRe_prop5 {
	all f : File | f not in Trash and eventually f in Trash
}
pred __repair { idpCqACFnxapn6HhhRe_prop5 }
check __repair { idpCqACFnxapn6HhhRe_prop5 <=> prop5o }