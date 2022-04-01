open main
pred idjCTTFzpqyL48XBn2s_prop14 {
	all f : Protected & Trash | after f not in Protected
}
pred __repair { idjCTTFzpqyL48XBn2s_prop14 }
check __repair { idjCTTFzpqyL48XBn2s_prop14 <=> prop14o }