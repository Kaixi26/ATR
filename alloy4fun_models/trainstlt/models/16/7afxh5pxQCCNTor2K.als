open main
pred id7afxh5pxQCCNTor2K_prop17 {
	
	always (some t:Train | historically no Train.pos and eventually(t.pos in Exit and historically no Exit))
}
pred __repair { id7afxh5pxQCCNTor2K_prop17 }
check __repair { id7afxh5pxQCCNTor2K_prop17 <=> prop17o }