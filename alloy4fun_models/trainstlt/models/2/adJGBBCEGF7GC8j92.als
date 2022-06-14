open main
pred idadJGBBCEGF7GC8j92_prop3 {
	
  always all t: Train | always t' in t.pos
}
pred __repair { idadJGBBCEGF7GC8j92_prop3 }
check __repair { idadJGBBCEGF7GC8j92_prop3 <=> prop3o }