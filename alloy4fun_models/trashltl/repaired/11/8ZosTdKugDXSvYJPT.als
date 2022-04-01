open main
pred id8ZosTdKugDXSvYJPT_prop12 {
	eventually some f:File | f in Trash releases f in Trash
}
pred __repair { id8ZosTdKugDXSvYJPT_prop12 }
check __repair { id8ZosTdKugDXSvYJPT_prop12 <=> prop12o }