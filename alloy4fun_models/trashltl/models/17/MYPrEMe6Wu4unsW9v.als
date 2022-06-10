open main
pred idMYPrEMe6Wu4unsW9v_prop18 {
	all f : (File & Trash) | always ( f not in Protected)
}
pred __repair { idMYPrEMe6Wu4unsW9v_prop18 }
check __repair { idMYPrEMe6Wu4unsW9v_prop18 <=> prop18o }