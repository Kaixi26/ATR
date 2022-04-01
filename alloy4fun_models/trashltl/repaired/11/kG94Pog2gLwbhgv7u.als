open main
pred idkG94Pog2gLwbhgv7u_prop12 {
	always all f : File | eventually f in Trash implies f in Trash'
}
pred __repair { idkG94Pog2gLwbhgv7u_prop12 }
check __repair { idkG94Pog2gLwbhgv7u_prop12 <=> prop12o }