open main
pred idyYZPJYvyP5nAr3SBP_prop15 {
	eventually ( all f:File | f not in Trash implies eventually f in Trash)
}
pred __repair { idyYZPJYvyP5nAr3SBP_prop15 }
check __repair { idyYZPJYvyP5nAr3SBP_prop15 <=> prop15o }