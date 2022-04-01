open main
pred idp24TQBq5u9PFiaWG8_prop13 {
	always some f : File | f in Trash implies once f not in Trash
}
pred __repair { idp24TQBq5u9PFiaWG8_prop13 }
check __repair { idp24TQBq5u9PFiaWG8_prop13 <=> prop13o }