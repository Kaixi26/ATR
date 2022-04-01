open main
pred idMHDWPBaatGntqrBLx_prop18 {
  	
	
  	always all f: File | f in Trash releases f not in Protected
}
pred __repair { idMHDWPBaatGntqrBLx_prop18 }
check __repair { idMHDWPBaatGntqrBLx_prop18 <=> prop18o }