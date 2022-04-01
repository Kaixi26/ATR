open main
pred id63MbKHt59DhniMdKb_prop15 {
	all f:File | eventually (f not in Trash implies f in Trash)
}
pred __repair { id63MbKHt59DhniMdKb_prop15 }
check __repair { id63MbKHt59DhniMdKb_prop15 <=> prop15o }