open main
pred idDa2w6hzDQhiEhbhbs_prop12 {
	all f : File-Trash | eventually f in Trash => after eventually f not in Trash
}
pred __repair { idDa2w6hzDQhiEhbhbs_prop12 }
check __repair { idDa2w6hzDQhiEhbhbs_prop12 <=> prop12o }