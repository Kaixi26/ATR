open main
pred idBqQoP5CBLukLoFggP_prop5 {
	some f: File | eventually (f not in File)
}
pred __repair { idBqQoP5CBLukLoFggP_prop5 }
check __repair { idBqQoP5CBLukLoFggP_prop5 <=> prop5o }