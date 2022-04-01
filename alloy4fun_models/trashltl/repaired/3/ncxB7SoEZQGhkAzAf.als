open main
pred idncxB7SoEZQGhkAzAf_prop4 {
  	some f: File | eventually f in Trash

}
pred __repair { idncxB7SoEZQGhkAzAf_prop4 }
check __repair { idncxB7SoEZQGhkAzAf_prop4 <=> prop4o }