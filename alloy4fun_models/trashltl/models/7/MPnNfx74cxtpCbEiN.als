open main
pred idMPnNfx74cxtpCbEiN_prop8 {
	all f:File | some link.f implies eventually f in Trash
}
pred __repair { idMPnNfx74cxtpCbEiN_prop8 }
check __repair { idMPnNfx74cxtpCbEiN_prop8 <=> prop8o }