open main
pred idK4oqwpxkYQzRjKi5E_prop16 {
	all f: File | eventually f in Protected implies historically f in Protected
}
pred __repair { idK4oqwpxkYQzRjKi5E_prop16 }
check __repair { idK4oqwpxkYQzRjKi5E_prop16 <=> prop16o }