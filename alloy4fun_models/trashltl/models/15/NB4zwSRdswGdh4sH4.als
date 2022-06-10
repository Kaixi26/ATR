open main
pred idNB4zwSRdswGdh4sH4_prop16 {
	always (all f : File | historically f in Protected)
}
pred __repair { idNB4zwSRdswGdh4sH4_prop16 }
check __repair { idNB4zwSRdswGdh4sH4_prop16 <=> prop16o }