open main
pred id8agr4BFJcnYJLm4FH_prop6 {
	
	all s : Signal | always (s in Green implies s' not in Green) or 
   (s not in Green implies s' in Green)
}
pred __repair { id8agr4BFJcnYJLm4FH_prop6 }
check __repair { id8agr4BFJcnYJLm4FH_prop6 <=> prop6o }