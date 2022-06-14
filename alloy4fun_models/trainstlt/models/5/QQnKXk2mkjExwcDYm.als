open main
pred idQQnKXk2mkjExwcDYm_prop6 {
	
	always (all  s : Signal |  no (s & Green) implies s' = Green else s'!=Green)
}
pred __repair { idQQnKXk2mkjExwcDYm_prop6 }
check __repair { idQQnKXk2mkjExwcDYm_prop6 <=> prop6o }