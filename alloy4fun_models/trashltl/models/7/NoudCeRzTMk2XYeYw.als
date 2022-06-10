open main
pred idNoudCeRzTMk2XYeYw_prop8 {
	 all f:File | eventually f.link not in File'
}
pred __repair { idNoudCeRzTMk2XYeYw_prop8 }
check __repair { idNoudCeRzTMk2XYeYw_prop8 <=> prop8o }