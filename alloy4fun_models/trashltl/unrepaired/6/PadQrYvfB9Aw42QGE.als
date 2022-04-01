open main
pred idPadQrYvfB9Aw42QGE_prop7 {
	always (some f: (File - Protected) | eventually f in Protected)
}
pred __repair { idPadQrYvfB9Aw42QGE_prop7 }
check __repair { idPadQrYvfB9Aw42QGE_prop7 <=> prop7o }