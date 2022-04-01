open main
pred idmMBQBHkLB9cbNncvz_prop12 {
  
	
  	always all f:File | f in File implies always eventually f in Trash
  
}
pred __repair { idmMBQBHkLB9cbNncvz_prop12 }
check __repair { idmMBQBHkLB9cbNncvz_prop12 <=> prop12o }