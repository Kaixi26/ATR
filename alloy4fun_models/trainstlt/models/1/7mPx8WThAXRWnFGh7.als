open main
pred id7mPx8WThAXRWnFGh7_prop2 {
	
	eventually (all t:Track | eventually Green in t.signal)
}
pred __repair { id7mPx8WThAXRWnFGh7_prop2 }
check __repair { id7mPx8WThAXRWnFGh7_prop2 <=> prop2o }