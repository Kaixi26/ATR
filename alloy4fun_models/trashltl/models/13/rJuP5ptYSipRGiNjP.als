open main
pred idrJuP5ptYSipRGiNjP_prop14 {
	always some (Protected & Trash) implies (Protected & Trash) not in Protected'
}
pred __repair { idrJuP5ptYSipRGiNjP_prop14 }
check __repair { idrJuP5ptYSipRGiNjP_prop14 <=> prop14o }