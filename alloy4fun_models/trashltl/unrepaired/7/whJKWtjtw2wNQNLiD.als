open main
pred idwhJKWtjtw2wNQNLiD_prop8 {
  always (all f : File | some f.link implies (eventually f.link in Trash))
}
pred __repair { idwhJKWtjtw2wNQNLiD_prop8 }
check __repair { idwhJKWtjtw2wNQNLiD_prop8 <=> prop8o }