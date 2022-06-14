open main
pred idXXRwcMXnKHjbBrKEb_prop13 {
	
	always ( all t:Train | no t.pos implies always (no t.pos))
}
pred __repair { idXXRwcMXnKHjbBrKEb_prop13 }
check __repair { idXXRwcMXnKHjbBrKEb_prop13 <=> prop13o }