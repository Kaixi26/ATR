open main
pred idcuDe5eXjzHxtyJTCj_prop5 {
 	all f : File | f in Trash => eventually f not in File
}
pred __repair { idcuDe5eXjzHxtyJTCj_prop5 }
check __repair { idcuDe5eXjzHxtyJTCj_prop5 <=> prop5o }