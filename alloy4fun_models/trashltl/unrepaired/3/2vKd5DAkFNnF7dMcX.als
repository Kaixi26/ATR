open main
pred id2vKd5DAkFNnF7dMcX_prop4 {
  	some f: File | f not in Protected and eventually always f in Trash

}
pred __repair { id2vKd5DAkFNnF7dMcX_prop4 }
check __repair { id2vKd5DAkFNnF7dMcX_prop4 <=> prop4o }