open main
pred idAxfAmLCMgudXhr2L8_prop4 {
  	some f: File | (once f not in Protected) implies eventually (always f in Trash) and eventually (always f.link in Trash)

}
pred __repair { idAxfAmLCMgudXhr2L8_prop4 }
check __repair { idAxfAmLCMgudXhr2L8_prop4 <=> prop4o }