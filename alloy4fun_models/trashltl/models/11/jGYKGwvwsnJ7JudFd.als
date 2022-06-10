open main
pred idjGYKGwvwsnJ7JudFd_prop12 {
	some f:File | eventually f in Trash implies always f in Trash
}
pred __repair { idjGYKGwvwsnJ7JudFd_prop12 }
check __repair { idjGYKGwvwsnJ7JudFd_prop12 <=> prop12o }