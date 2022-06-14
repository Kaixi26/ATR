open main
pred id95g8pwd9Sjx8jjjfk_prop15 {
	
	always (some t: Train| (no t.pos  implies eventually some t.pos) or t.pos != t.pos')
}
pred __repair { id95g8pwd9Sjx8jjjfk_prop15 }
check __repair { id95g8pwd9Sjx8jjjfk_prop15 <=> prop15o }