open main
pred idfTfTShW3nagvh2z8M_prop12 {
  
	eventually all f:File | f in Trash implies always f in Trash'
}
pred __repair { idfTfTShW3nagvh2z8M_prop12 }
check __repair { idfTfTShW3nagvh2z8M_prop12 <=> prop12o }