open main
pred idJt7aZ7uWetgMxwde5_prop12 {
   (all f:File | always some (f &Trash) since f in Trash )
}
pred __repair { idJt7aZ7uWetgMxwde5_prop12 }
check __repair { idJt7aZ7uWetgMxwde5_prop12 <=> prop12o }