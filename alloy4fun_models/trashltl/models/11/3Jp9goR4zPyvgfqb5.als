open main
pred id3Jp9goR4zPyvgfqb5_prop12 {
	always some f : File | eventually f in Trash implies f in Trash
}
pred __repair { id3Jp9goR4zPyvgfqb5_prop12 }
check __repair { id3Jp9goR4zPyvgfqb5_prop12 <=> prop12o }