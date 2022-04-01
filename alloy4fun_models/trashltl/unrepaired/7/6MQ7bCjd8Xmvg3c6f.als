open main
pred id6MQ7bCjd8Xmvg3c6f_prop8 {
	all f : File | some z : f.link | eventually (f in Trash and z in Trash) 
}
pred __repair { id6MQ7bCjd8Xmvg3c6f_prop8 }
check __repair { id6MQ7bCjd8Xmvg3c6f_prop8 <=> prop8o }