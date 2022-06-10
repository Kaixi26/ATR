open main
pred id2cdKWwLedZQLLbNQJ_prop16 {
 	always (some f:File | f in Protected implies historically f in Protected)
}
pred __repair { id2cdKWwLedZQLLbNQJ_prop16 }
check __repair { id2cdKWwLedZQLLbNQJ_prop16 <=> prop16o }