open main
pred idfdahJAGbot3iG6GC9_prop6 {
	
	always (all s : Signal | s in Green implies s not in Green' or s not in Green implies s in Green')
}
pred __repair { idfdahJAGbot3iG6GC9_prop6 }
check __repair { idfdahJAGbot3iG6GC9_prop6 <=> prop6o }