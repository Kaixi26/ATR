open main
pred idBv8T4MNY2hK8iJWdX_prop3 {
	
	always( all t:Train | no t.pos)
}
pred __repair { idBv8T4MNY2hK8iJWdX_prop3 }
check __repair { idBv8T4MNY2hK8iJWdX_prop3 <=> prop3o }