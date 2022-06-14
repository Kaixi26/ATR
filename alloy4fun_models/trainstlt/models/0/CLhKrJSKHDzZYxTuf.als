open main
pred idCLhKrJSKHDzZYxTuf_prop1 {
	
	once (all t:Track | Green in t.signal implies (before Green not in t.signal))
}
pred __repair { idCLhKrJSKHDzZYxTuf_prop1 }
check __repair { idCLhKrJSKHDzZYxTuf_prop1 <=> prop1o }