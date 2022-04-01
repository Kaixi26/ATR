open main
pred idx7BFd8HTPFjAtR9pZ_prop4 {
  	some f: File | f not in Protected implies eventually f in Trash

}
pred __repair { idx7BFd8HTPFjAtR9pZ_prop4 }
check __repair { idx7BFd8HTPFjAtR9pZ_prop4 <=> prop4o }