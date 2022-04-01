open main
pred id34xYtTLtnbgbLS8c9_prop4 {
  	some f: File | (always f not in Protected) implies eventually f in Trash

}
pred __repair { id34xYtTLtnbgbLS8c9_prop4 }
check __repair { id34xYtTLtnbgbLS8c9_prop4 <=> prop4o }