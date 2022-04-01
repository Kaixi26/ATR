open main
pred idaZGuGgk6c5DfWduCa_prop11 {
	all f : File | f not in Protected => f in Protected'
}
pred __repair { idaZGuGgk6c5DfWduCa_prop11 }
check __repair { idaZGuGgk6c5DfWduCa_prop11 <=> prop11o }