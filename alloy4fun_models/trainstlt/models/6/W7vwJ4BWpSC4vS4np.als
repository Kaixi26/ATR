open main
pred idW7vwJ4BWpSC4vS4np_prop7 {
	
	all t:Train | some t.pos :> (Entry+Exit) implies eventually no t.pos :> (Entry+Exit)
}
pred __repair { idW7vwJ4BWpSC4vS4np_prop7 }
check __repair { idW7vwJ4BWpSC4vS4np_prop7 <=> prop7o }