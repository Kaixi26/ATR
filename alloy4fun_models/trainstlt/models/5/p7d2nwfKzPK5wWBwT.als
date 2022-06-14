open main
pred idp7d2nwfKzPK5wWBwT_prop6 {
	
	always some s : Signal | eventually s' != s
}
pred __repair { idp7d2nwfKzPK5wWBwT_prop6 }
check __repair { idp7d2nwfKzPK5wWBwT_prop6 <=> prop6o }