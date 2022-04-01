open main
pred ide5Q3nxGTbgJK5vw4u_prop12 {
	always all f:File | eventually f in Trash implies  f in Trash
}
pred __repair { ide5Q3nxGTbgJK5vw4u_prop12 }
check __repair { ide5Q3nxGTbgJK5vw4u_prop12 <=> prop12o }