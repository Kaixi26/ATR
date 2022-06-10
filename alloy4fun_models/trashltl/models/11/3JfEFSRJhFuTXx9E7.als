open main
pred id3JfEFSRJhFuTXx9E7_prop12 {
	eventually all f : File | f not in Trash implies f in Trash' 
}
pred __repair { id3JfEFSRJhFuTXx9E7_prop12 }
check __repair { id3JfEFSRJhFuTXx9E7_prop12 <=> prop12o }