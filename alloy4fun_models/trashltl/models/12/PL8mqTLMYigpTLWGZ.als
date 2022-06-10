open main
pred idPL8mqTLMYigpTLWGZ_prop13 {
	always some f : File | always f in Trash implies once f not in Trash
}
pred __repair { idPL8mqTLMYigpTLWGZ_prop13 }
check __repair { idPL8mqTLMYigpTLWGZ_prop13 <=> prop13o }