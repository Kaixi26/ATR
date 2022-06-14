open main
pred idWdCR33X22wsfShXFh_prop7 {
	
	always (all t:Train | some (t.pos & Entry ) implies   eventually some (t.pos & Exit) )
}
pred __repair { idWdCR33X22wsfShXFh_prop7 }
check __repair { idWdCR33X22wsfShXFh_prop7 <=> prop7o }