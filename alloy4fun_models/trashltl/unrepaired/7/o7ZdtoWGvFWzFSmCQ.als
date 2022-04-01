open main
pred ido7ZdtoWGvFWzFSmCQ_prop8 {
	all f:File | some link.f implies eventually f in Trash
}
pred __repair { ido7ZdtoWGvFWzFSmCQ_prop8 }
check __repair { ido7ZdtoWGvFWzFSmCQ_prop8 <=> prop8o }