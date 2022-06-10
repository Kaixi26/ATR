open main
pred id9eXyhZJu7SYNfbXSA_prop18 {
  	
	
  	always all f: Protected | f in Trash releases f not in Protected
}
pred __repair { id9eXyhZJu7SYNfbXSA_prop18 }
check __repair { id9eXyhZJu7SYNfbXSA_prop18 <=> prop18o }