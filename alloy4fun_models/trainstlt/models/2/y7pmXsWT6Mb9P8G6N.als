open main
pred idy7pmXsWT6Mb9P8G6N_prop3 {
	
  
  (Train->Track in pos implies always Train->Track in pos) and (Train->Track not in pos implies always Train->Track not in pos)
}
pred __repair { idy7pmXsWT6Mb9P8G6N_prop3 }
check __repair { idy7pmXsWT6Mb9P8G6N_prop3 <=> prop3o }