open main
pred idXSLWndYgpaqxKFSi7_prop12 {
  

  	eventually all f:File | f in Trash implies  f in Trash'
  
}
pred __repair { idXSLWndYgpaqxKFSi7_prop12 }
check __repair { idXSLWndYgpaqxKFSi7_prop12 <=> prop12o }