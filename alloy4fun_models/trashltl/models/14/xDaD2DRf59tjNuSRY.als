open main
pred idxDaD2DRf59tjNuSRY_prop15 {
	
  	always (no File & Trash => eventually some File & Trash)
}
pred __repair { idxDaD2DRf59tjNuSRY_prop15 }
check __repair { idxDaD2DRf59tjNuSRY_prop15 <=> prop15o }