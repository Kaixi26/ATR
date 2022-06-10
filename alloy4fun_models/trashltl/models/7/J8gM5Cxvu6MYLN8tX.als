open main
pred idJ8gM5Cxvu6MYLN8tX_prop8 {
	 all f:File| some f.link implies (eventually f+f.link in Trash)
}
pred __repair { idJ8gM5Cxvu6MYLN8tX_prop8 }
check __repair { idJ8gM5Cxvu6MYLN8tX_prop8 <=> prop8o }