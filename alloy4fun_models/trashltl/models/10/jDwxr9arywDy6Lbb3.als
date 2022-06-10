open main
pred idjDwxr9arywDy6Lbb3_prop11 {
	all f : File | eventually f not in Protected => f in Protected'
}
pred __repair { idjDwxr9arywDy6Lbb3_prop11 }
check __repair { idjDwxr9arywDy6Lbb3_prop11 <=> prop11o }