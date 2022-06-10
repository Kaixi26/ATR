open main
pred id979mdYPp8cR2casTS_prop5 {
	some f : File | eventually f not in File 
}
pred __repair { id979mdYPp8cR2casTS_prop5 }
check __repair { id979mdYPp8cR2casTS_prop5 <=> prop5o }