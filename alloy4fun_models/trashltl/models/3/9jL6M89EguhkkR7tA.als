open main
pred id9jL6M89EguhkkR7tA_prop4 {
  	some f: File | always( f in Trash implies always f in Trash)

}
pred __repair { id9jL6M89EguhkkR7tA_prop4 }
check __repair { id9jL6M89EguhkkR7tA_prop4 <=> prop4o }