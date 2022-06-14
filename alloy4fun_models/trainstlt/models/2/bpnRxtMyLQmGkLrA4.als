open main
pred idbpnRxtMyLQmGkLrA4_prop3 {
	
  
  
  (Train->Track in pos implies always Train->Track in pos) and (no Train->Track & pos implies always no Train->Track & pos)
}
pred __repair { idbpnRxtMyLQmGkLrA4_prop3 }
check __repair { idbpnRxtMyLQmGkLrA4_prop3 <=> prop3o }