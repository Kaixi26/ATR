open main
pred idHpeRXzdmYS7M6CFMf_prop8 {
	eventually(all f1,f2:File | f1->f2 in link implies eventually f1 in Trash)
}
pred __repair { idHpeRXzdmYS7M6CFMf_prop8 }
check __repair { idHpeRXzdmYS7M6CFMf_prop8 <=> prop8o }