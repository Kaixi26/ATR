open main
pred idzDd7TBYXzxmvZZhkK_prop8 {
	always (all f,f2:File | f->f2 in link implies eventually ( f in Trash and f2 in Trash))
}
pred __repair { idzDd7TBYXzxmvZZhkK_prop8 }
check __repair { idzDd7TBYXzxmvZZhkK_prop8 <=> prop8o }