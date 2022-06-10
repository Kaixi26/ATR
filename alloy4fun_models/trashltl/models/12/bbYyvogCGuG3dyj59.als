open main
pred idbbYyvogCGuG3dyj59_prop13 {
	always all f : File | (f in Trash) until (f not in Trash)
}
pred __repair { idbbYyvogCGuG3dyj59_prop13 }
check __repair { idbbYyvogCGuG3dyj59_prop13 <=> prop13o }