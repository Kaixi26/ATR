open main
pred idnTu9WhedT4knYv7Zg_prop8 {
	all f:File | some link.f implies (eventually f in Trash)
}
pred __repair { idnTu9WhedT4knYv7Zg_prop8 }
check __repair { idnTu9WhedT4knYv7Zg_prop8 <=> prop8o }