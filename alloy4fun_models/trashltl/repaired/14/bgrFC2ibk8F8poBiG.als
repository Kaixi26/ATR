open main
pred idbgrFC2ibk8F8poBiG_prop15 {
	all f : File | eventually f in Trash
}
pred __repair { idbgrFC2ibk8F8poBiG_prop15 }
check __repair { idbgrFC2ibk8F8poBiG_prop15 <=> prop15o }