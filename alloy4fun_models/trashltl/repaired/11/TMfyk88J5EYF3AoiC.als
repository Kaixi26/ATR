open main
pred idTMfyk88J5EYF3AoiC_prop12 {
  
  	always all f:File | f in Trash implies always f in Trash'
  
}
pred __repair { idTMfyk88J5EYF3AoiC_prop12 }
check __repair { idTMfyk88J5EYF3AoiC_prop12 <=> prop12o }