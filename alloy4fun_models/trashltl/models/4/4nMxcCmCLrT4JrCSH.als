open main
pred id4nMxcCmCLrT4JrCSH_prop5 {
	all f:File | eventually no f & File
}
pred __repair { id4nMxcCmCLrT4JrCSH_prop5 }
check __repair { id4nMxcCmCLrT4JrCSH_prop5 <=> prop5o }