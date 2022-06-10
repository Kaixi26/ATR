open main
pred idjYnA9z73vdDJjdrus_prop12 {
  eventually some f : File | eventually f in Trash implies always f in Trash
}
pred __repair { idjYnA9z73vdDJjdrus_prop12 }
check __repair { idjYnA9z73vdDJjdrus_prop12 <=> prop12o }