open main
pred idPNTJWWLBSoH4mNhxv_prop4 {
	
  all t1, t2 : Train | always t1.pos != t2.pos
}
pred __repair { idPNTJWWLBSoH4mNhxv_prop4 }
check __repair { idPNTJWWLBSoH4mNhxv_prop4 <=> prop4o }