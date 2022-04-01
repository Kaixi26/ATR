open main
pred idbaCPqki3rCxtALybc_prop5 {
	eventually some f : File| f in Trash and File' = File - f and Trash' = Trash - f
}
pred __repair { idbaCPqki3rCxtALybc_prop5 }
check __repair { idbaCPqki3rCxtALybc_prop5 <=> prop5o }