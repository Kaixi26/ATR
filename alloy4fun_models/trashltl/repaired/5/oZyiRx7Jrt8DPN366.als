open main
pred idoZyiRx7Jrt8DPN366_prop6 {
	some f:File | f in Trash releases always f in Trash
}
pred __repair { idoZyiRx7Jrt8DPN366_prop6 }
check __repair { idoZyiRx7Jrt8DPN366_prop6 <=> prop6o }