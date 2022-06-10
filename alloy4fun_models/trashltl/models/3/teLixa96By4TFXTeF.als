open main
pred idteLixa96By4TFXTeF_prop4 {
	
 
  some f:File | f not in Trash implies  f in Trash
}
pred __repair { idteLixa96By4TFXTeF_prop4 }
check __repair { idteLixa96By4TFXTeF_prop4 <=> prop4o }