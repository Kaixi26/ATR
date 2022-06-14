open main
pred idxKee2HzkfhHA927eo_prop6 {
	
	all s : Signal | always (s in Green implies s not in Green') or (s not in Green implies s in Green')
}
pred __repair { idxKee2HzkfhHA927eo_prop6 }
check __repair { idxKee2HzkfhHA927eo_prop6 <=> prop6o }