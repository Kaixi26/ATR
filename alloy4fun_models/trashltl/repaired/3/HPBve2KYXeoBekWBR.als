open main
pred idHPBve2KYXeoBekWBR_prop4 {
	
  some f:File | f not in Trash implies eventually f in Trash
}
pred __repair { idHPBve2KYXeoBekWBR_prop4 }
check __repair { idHPBve2KYXeoBekWBR_prop4 <=> prop4o }