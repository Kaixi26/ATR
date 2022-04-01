open main
pred idJRignmCgF9RBGdxJx_prop10 {
	always( all f:Protected | always f in Protected)
}
pred __repair { idJRignmCgF9RBGdxJx_prop10 }
check __repair { idJRignmCgF9RBGdxJx_prop10 <=> prop10o }