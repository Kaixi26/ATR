open main
pred idBkvemgeCjLk8XcY8m_prop13 {
	always all f: File | f not in Trash until f in Trash
}
pred __repair { idBkvemgeCjLk8XcY8m_prop13 }
check __repair { idBkvemgeCjLk8XcY8m_prop13 <=> prop13o }