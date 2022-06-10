open main
pred idLsR7s7tBy2JKZoCGc_prop4 {
  	some File
	some f:File | eventually f in Trash
}
pred __repair { idLsR7s7tBy2JKZoCGc_prop4 }
check __repair { idLsR7s7tBy2JKZoCGc_prop4 <=> prop4o }