open main
pred idrmDAu2F2Z73terrMD_prop12 {
  
	eventually all f:File | f in Trash implies eventually always f in Trash
}
pred __repair { idrmDAu2F2Z73terrMD_prop12 }
check __repair { idrmDAu2F2Z73terrMD_prop12 <=> prop12o }