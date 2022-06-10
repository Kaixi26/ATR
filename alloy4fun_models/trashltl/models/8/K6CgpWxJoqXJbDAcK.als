open main
pred idK6CgpWxJoqXJbDAcK_prop9 {
	all f: File | once f in Protected implies always f not in Trash 
}
pred __repair { idK6CgpWxJoqXJbDAcK_prop9 }
check __repair { idK6CgpWxJoqXJbDAcK_prop9 <=> prop9o }