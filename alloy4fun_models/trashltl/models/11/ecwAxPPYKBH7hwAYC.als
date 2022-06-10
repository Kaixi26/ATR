open main
pred idecwAxPPYKBH7hwAYC_prop12 {
	eventually all f:File | f in Trash implies always f in Trash
}
pred __repair { idecwAxPPYKBH7hwAYC_prop12 }
check __repair { idecwAxPPYKBH7hwAYC_prop12 <=> prop12o }