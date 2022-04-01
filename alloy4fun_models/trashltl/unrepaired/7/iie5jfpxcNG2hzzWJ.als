open main
pred idiie5jfpxcNG2hzzWJ_prop8 {
	eventually all f:File | f in f.link implies f in Trash
}
pred __repair { idiie5jfpxcNG2hzzWJ_prop8 }
check __repair { idiie5jfpxcNG2hzzWJ_prop8 <=> prop8o }