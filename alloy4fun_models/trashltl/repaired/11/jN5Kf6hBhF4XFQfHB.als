open main
pred idjN5Kf6hBhF4XFQfHB_prop12 {
  
	
  	always all f:File | f in File implies eventually f in Trash
  
}
pred __repair { idjN5Kf6hBhF4XFQfHB_prop12 }
check __repair { idjN5Kf6hBhF4XFQfHB_prop12 <=> prop12o }