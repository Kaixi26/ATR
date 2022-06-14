open main
pred id6AmNRS3gRx9GHCfqj_prop4 {
	
  all t1, t2 : Train | always t1.pos' != t2.pos'
}
pred __repair { id6AmNRS3gRx9GHCfqj_prop4 }
check __repair { id6AmNRS3gRx9GHCfqj_prop4 <=> prop4o }