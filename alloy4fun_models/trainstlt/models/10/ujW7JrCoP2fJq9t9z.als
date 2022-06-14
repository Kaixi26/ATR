open main
pred idujW7JrCoP2fJq9t9z_prop11 {
	
	always ( all t:Train | some t.pos implies historically some t.pos :> Entry)
}
pred __repair { idujW7JrCoP2fJq9t9z_prop11 }
check __repair { idujW7JrCoP2fJq9t9z_prop11 <=> prop11o }