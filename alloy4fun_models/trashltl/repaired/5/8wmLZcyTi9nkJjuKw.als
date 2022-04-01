open main
pred id8wmLZcyTi9nkJjuKw_prop6 {
	always(all f : (File & Trash) |  (f in Trash))
}
pred __repair { id8wmLZcyTi9nkJjuKw_prop6 }
check __repair { id8wmLZcyTi9nkJjuKw_prop6 <=> prop6o }