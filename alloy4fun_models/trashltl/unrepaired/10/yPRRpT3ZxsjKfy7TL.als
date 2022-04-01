open main
pred idyPRRpT3ZxsjKfy7TL_prop11 {
	always all f:File | f in File-Protected implies (f' =  Protected)
  

}
pred __repair { idyPRRpT3ZxsjKfy7TL_prop11 }
check __repair { idyPRRpT3ZxsjKfy7TL_prop11 <=> prop11o }