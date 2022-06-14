open main
pred idYa5caPxcBkTeNwbWC_prop6 {
	
    always all s : Signal | s in Green => no s & Green' or no s & Green => s in Green'
}
pred __repair { idYa5caPxcBkTeNwbWC_prop6 }
check __repair { idYa5caPxcBkTeNwbWC_prop6 <=> prop6o }