open main
pred idZxshJELdsMjEXRFqM_prop2 {
	
	always(all t:Track | eventually t.signal = Green)
}
pred __repair { idZxshJELdsMjEXRFqM_prop2 }
check __repair { idZxshJELdsMjEXRFqM_prop2 <=> prop2o }