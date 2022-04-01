open main
pred id3jChJg9gBidjQ47wu_prop11 {
	all f : File | f not in Protected => f in Protected'
}
pred __repair { id3jChJg9gBidjQ47wu_prop11 }
check __repair { id3jChJg9gBidjQ47wu_prop11 <=> prop11o }