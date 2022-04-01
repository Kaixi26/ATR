open main
pred idMqGoFEhDEbRDvQmf9_prop12 {
	all f : File | eventually f in Trash => eventually f not in Trash
}
pred __repair { idMqGoFEhDEbRDvQmf9_prop12 }
check __repair { idMqGoFEhDEbRDvQmf9_prop12 <=> prop12o }