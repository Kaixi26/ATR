open main
pred id5iit2ZNkjmLF5W6kF_prop4 {
	some File && no Trash
  	eventually some Trash
}
pred __repair { id5iit2ZNkjmLF5W6kF_prop4 }
check __repair { id5iit2ZNkjmLF5W6kF_prop4 <=> prop4o }