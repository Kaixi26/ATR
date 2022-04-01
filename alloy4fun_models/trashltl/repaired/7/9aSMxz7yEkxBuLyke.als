open main
pred id9aSMxz7yEkxBuLyke_prop8 {
all f1,f2 : File | f1->f2 in link implies eventually f1 + f2 in Trash
}
pred __repair { id9aSMxz7yEkxBuLyke_prop8 }
check __repair { id9aSMxz7yEkxBuLyke_prop8 <=> prop8o }