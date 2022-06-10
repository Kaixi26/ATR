open main
pred idCGeMRa45iKdhvi9ii_prop12 {
	all f : File | always (
      						eventually f in Trash => always f in Trash
  			       )
}
pred __repair { idCGeMRa45iKdhvi9ii_prop12 }
check __repair { idCGeMRa45iKdhvi9ii_prop12 <=> prop12o }