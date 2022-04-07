open main
pred idpg9iQ6PPJ6AaAZJC4_prop8 {
	all f1:File , f2:File | f1.link = f2 implies eventually f2 in Trash
}
pred __repair { idpg9iQ6PPJ6AaAZJC4_prop8 }
check __repair { idpg9iQ6PPJ6AaAZJC4_prop8 <=> prop8o }