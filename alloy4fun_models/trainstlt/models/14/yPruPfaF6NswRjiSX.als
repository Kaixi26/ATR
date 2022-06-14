open main
pred idyPruPfaF6NswRjiSX_prop15 {
	
	eventually always (all t: Train| t.pos != t.pos')
}
pred __repair { idyPruPfaF6NswRjiSX_prop15 }
check __repair { idyPruPfaF6NswRjiSX_prop15 <=> prop15o }