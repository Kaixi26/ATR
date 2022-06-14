open main
pred idnYbPR4WmdicYGYq55_prop15 {
	
	all t:Train | always one t.pos implies eventually (t.pos)' != t.pos
}
pred __repair { idnYbPR4WmdicYGYq55_prop15 }
check __repair { idnYbPR4WmdicYGYq55_prop15 <=> prop15o }