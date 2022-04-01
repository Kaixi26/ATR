open main
pred iduBMEX9FJi6StphQuz_prop13 {
	some f : File | f in Trash implies once f not in Trash
}
pred __repair { iduBMEX9FJi6StphQuz_prop13 }
check __repair { iduBMEX9FJi6StphQuz_prop13 <=> prop13o }