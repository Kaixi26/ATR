open main
pred idancEyCaXYKohHuQGP_prop18 {
	always(all f : (File & Trash) |  f not in Protected)
}
pred __repair { idancEyCaXYKohHuQGP_prop18 }
check __repair { idancEyCaXYKohHuQGP_prop18 <=> prop18o }