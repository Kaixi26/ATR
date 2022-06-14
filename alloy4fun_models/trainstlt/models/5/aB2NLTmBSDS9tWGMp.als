open main
pred idaB2NLTmBSDS9tWGMp_prop6 {
	
	always all s : Signal | always (s in Green implies s' not in Green) or 
  always (s not in Green implies s' in Green)
}
pred __repair { idaB2NLTmBSDS9tWGMp_prop6 }
check __repair { idaB2NLTmBSDS9tWGMp_prop6 <=> prop6o }