open main
pred idfnJzrrpcj6umPDv5Z_prop12 {
  	
  	
  	always all f:File | eventually f in Trash implies always f in Trash'
  
}
pred __repair { idfnJzrrpcj6umPDv5Z_prop12 }
check __repair { idfnJzrrpcj6umPDv5Z_prop12 <=> prop12o }