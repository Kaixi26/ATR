open main
pred idm9erb4MFpj2C6fdcB_prop6 {
	all f : File | once f in Trash => always f in Trash
}
pred __repair { idm9erb4MFpj2C6fdcB_prop6 }
check __repair { idm9erb4MFpj2C6fdcB_prop6 <=> prop6o }