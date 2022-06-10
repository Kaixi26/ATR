open main
pred idMhgeej24wXvn2dzLF_prop12 {
	all f : File | eventually f in Trash and eventually f not in Trash
}
pred __repair { idMhgeej24wXvn2dzLF_prop12 }
check __repair { idMhgeej24wXvn2dzLF_prop12 <=> prop12o }