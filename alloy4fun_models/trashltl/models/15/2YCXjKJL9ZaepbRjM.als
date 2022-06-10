open main
pred id2YCXjKJL9ZaepbRjM_prop16 {
  all f:File| f in Protected implies historically f in Protected

}
pred __repair { id2YCXjKJL9ZaepbRjM_prop16 }
check __repair { id2YCXjKJL9ZaepbRjM_prop16 <=> prop16o }