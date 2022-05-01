open main
pred idr3SqBsT8rK5HcyLQ8_prop16 {
	always (all f : Protected | always f in Protected)
}
pred __repair { idr3SqBsT8rK5HcyLQ8_prop16 }
check __repair { idr3SqBsT8rK5HcyLQ8_prop16 <=> prop16o }