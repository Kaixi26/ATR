open main
pred id2spJpP9XvE7s3rFo8_prop12 {
  
  	eventually all f:File | f in Trash implies f in Trash'
  
}
pred __repair { id2spJpP9XvE7s3rFo8_prop12 }
check __repair { id2spJpP9XvE7s3rFo8_prop12 <=> prop12o }