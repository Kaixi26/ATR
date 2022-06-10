open main
pred idg5farDX3Q82xqBqX8_prop19 {
	always (all f:Protected | eventually f not in Protected and f in Trash)
}
pred __repair { idg5farDX3Q82xqBqX8_prop19 }
check __repair { idg5farDX3Q82xqBqX8_prop19 <=> prop19o }