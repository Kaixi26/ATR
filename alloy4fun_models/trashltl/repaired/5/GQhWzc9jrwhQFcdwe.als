open main
pred idGQhWzc9jrwhQFcdwe_prop6 {
	all f : File | f in Trash => after always f in Trash
}
pred __repair { idGQhWzc9jrwhQFcdwe_prop6 }
check __repair { idGQhWzc9jrwhQFcdwe_prop6 <=> prop6o }