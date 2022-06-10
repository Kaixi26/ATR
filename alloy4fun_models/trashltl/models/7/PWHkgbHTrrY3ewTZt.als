open main
pred idPWHkgbHTrrY3ewTZt_prop8 {
	always all f : File.link | eventually f in Trash 
}
pred __repair { idPWHkgbHTrrY3ewTZt_prop8 }
check __repair { idPWHkgbHTrrY3ewTZt_prop8 <=> prop8o }