open main
pred idPA7hto4BkD5CPDr9c_prop6 {
	all f : File | once f in Trash implies always f in Trash
}
pred __repair { idPA7hto4BkD5CPDr9c_prop6 }
check __repair { idPA7hto4BkD5CPDr9c_prop6 <=> prop6o }