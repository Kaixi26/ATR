open main
pred idoDCjaML78HH9kaRa4_prop16 {
	all f : File | f in Protected implies historically f in Protected
}
pred __repair { idoDCjaML78HH9kaRa4_prop16 }
check __repair { idoDCjaML78HH9kaRa4_prop16 <=> prop16o }