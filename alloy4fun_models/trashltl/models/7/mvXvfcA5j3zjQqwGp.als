open main
pred idmvXvfcA5j3zjQqwGp_prop8 {
	always (all f:File.link | eventually f in Trash)
}
pred __repair { idmvXvfcA5j3zjQqwGp_prop8 }
check __repair { idmvXvfcA5j3zjQqwGp_prop8 <=> prop8o }