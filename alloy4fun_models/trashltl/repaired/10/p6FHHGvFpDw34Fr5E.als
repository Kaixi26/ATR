open main
pred idp6FHHGvFpDw34Fr5E_prop11 {
	always (some (File - Protected) implies (after ((File - Protected) in Protected)))
}
pred __repair { idp6FHHGvFpDw34Fr5E_prop11 }
check __repair { idp6FHHGvFpDw34Fr5E_prop11 <=> prop11o }