open main
pred id3m3PdmJi2FLGis6GL_prop12 {
	  	all f : File | (always eventually f in Trash) implies (always eventually f not in Trash)
}
pred __repair { id3m3PdmJi2FLGis6GL_prop12 }
check __repair { id3m3PdmJi2FLGis6GL_prop12 <=> prop12o }