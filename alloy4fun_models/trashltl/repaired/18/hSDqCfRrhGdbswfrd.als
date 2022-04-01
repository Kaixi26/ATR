open main
pred idhSDqCfRrhGdbswfrd_prop19 {
	always all f:Protected | f in Protected until eventually f in Trash 
}
pred __repair { idhSDqCfRrhGdbswfrd_prop19 }
check __repair { idhSDqCfRrhGdbswfrd_prop19 <=> prop19o }