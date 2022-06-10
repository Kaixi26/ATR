open main
pred iduETXapM3yhKN7hfKp_prop12 {
	always some f : File | eventually f in Trash implies f in Trash
}
pred __repair { iduETXapM3yhKN7hfKp_prop12 }
check __repair { iduETXapM3yhKN7hfKp_prop12 <=> prop12o }