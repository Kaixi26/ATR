open main
pred idGSWZJDzsoJjEBKjsv_prop6 {
	
  	always ((Signal-Green = Green') and (Green = (Signal-Green)'))
}
pred __repair { idGSWZJDzsoJjEBKjsv_prop6 }
check __repair { idGSWZJDzsoJjEBKjsv_prop6 <=> prop6o }