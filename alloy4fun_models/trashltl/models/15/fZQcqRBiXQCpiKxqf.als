open main
pred idfZQcqRBiXQCpiKxqf_prop16 {
	always (all f:Protected |  f in Protected'  )
}
pred __repair { idfZQcqRBiXQCpiKxqf_prop16 }
check __repair { idfZQcqRBiXQCpiKxqf_prop16 <=> prop16o }