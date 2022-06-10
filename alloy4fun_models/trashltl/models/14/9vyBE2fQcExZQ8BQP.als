open main
pred id9vyBE2fQcExZQ8BQP_prop15 {
	always (some f : File | eventually f in Trash)
}
pred __repair { id9vyBE2fQcExZQ8BQP_prop15 }
check __repair { id9vyBE2fQcExZQ8BQP_prop15 <=> prop15o }