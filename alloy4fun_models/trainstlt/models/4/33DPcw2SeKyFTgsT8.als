open main
pred id33DPcw2SeKyFTgsT8_prop5 {
	
  all t:Train| {
	always (t.pos in Exit  implies eventually no t.pos')
    always (t.pos in (Track-Exit)  implies  t.pos' in t.pos.prox)
  }
}
pred __repair { id33DPcw2SeKyFTgsT8_prop5 }
check __repair { id33DPcw2SeKyFTgsT8_prop5 <=> prop5o }