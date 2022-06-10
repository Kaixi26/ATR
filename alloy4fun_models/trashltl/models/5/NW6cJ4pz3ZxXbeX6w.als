open main
pred idNW6cJ4pz3ZxXbeX6w_prop6 {
	all f: File | f in Trash implies after (always f in Trash)
}
pred __repair { idNW6cJ4pz3ZxXbeX6w_prop6 }
check __repair { idNW6cJ4pz3ZxXbeX6w_prop6 <=> prop6o }