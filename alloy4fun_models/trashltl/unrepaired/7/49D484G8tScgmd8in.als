open main
pred id49D484G8tScgmd8in_prop8 {
	all f1:File , f2:File | f1.link = f2 
}
pred __repair { id49D484G8tScgmd8in_prop8 }
check __repair { id49D484G8tScgmd8in_prop8 <=> prop8o }