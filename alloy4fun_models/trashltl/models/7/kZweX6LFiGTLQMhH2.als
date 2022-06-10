open main
pred idkZweX6LFiGTLQMhH2_prop8 {
	 all f:File| eventually f.*link  in Trash
}
pred __repair { idkZweX6LFiGTLQMhH2_prop8 }
check __repair { idkZweX6LFiGTLQMhH2_prop8 <=> prop8o }