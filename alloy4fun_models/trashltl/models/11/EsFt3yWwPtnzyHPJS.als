open main
pred idEsFt3yWwPtnzyHPJS_prop12 {
	some f:File | eventually f in Trash implies always f in Trash
}
pred __repair { idEsFt3yWwPtnzyHPJS_prop12 }
check __repair { idEsFt3yWwPtnzyHPJS_prop12 <=> prop12o }