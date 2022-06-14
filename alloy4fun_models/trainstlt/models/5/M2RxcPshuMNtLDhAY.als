open main
pred idM2RxcPshuMNtLDhAY_prop6 {
	
	always (all s:Signal |  (s in Green implies always (no (s &  Green'))) or 
			no (s & Green) implies always (some (s &  Green')))
}
pred __repair { idM2RxcPshuMNtLDhAY_prop6 }
check __repair { idM2RxcPshuMNtLDhAY_prop6 <=> prop6o }