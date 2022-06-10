open main
pred idDDBBihAAY3LsCEf94_prop16 {
	always (all f:File |  f in Protected implies always (f in  Protected')  )
}
pred __repair { idDDBBihAAY3LsCEf94_prop16 }
check __repair { idDDBBihAAY3LsCEf94_prop16 <=> prop16o }