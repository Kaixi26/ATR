open main
pred idstAeeMZLb3SKfAaQr_prop13 {
	always some f:File | f in Trash implies always once f in File-Trash
}
pred __repair { idstAeeMZLb3SKfAaQr_prop13 }
check __repair { idstAeeMZLb3SKfAaQr_prop13 <=> prop13o }