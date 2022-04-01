open main
pred idzWXsHz9nWfcZcZnSF_prop5 {
 	some f: File | eventually f in Trash and eventually always f not in File
}
pred __repair { idzWXsHz9nWfcZcZnSF_prop5 }
check __repair { idzWXsHz9nWfcZcZnSF_prop5 <=> prop5o }