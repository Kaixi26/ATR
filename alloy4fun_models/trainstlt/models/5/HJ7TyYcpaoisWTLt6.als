open main
pred idHJ7TyYcpaoisWTLt6_prop6 {
	
	
    always (Signal in Green => no Signal & Green' || no Signal & Green => Signal in Green')
}
pred __repair { idHJ7TyYcpaoisWTLt6_prop6 }
check __repair { idHJ7TyYcpaoisWTLt6_prop6 <=> prop6o }