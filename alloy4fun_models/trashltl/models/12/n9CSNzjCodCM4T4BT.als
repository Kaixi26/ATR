open main
pred idn9CSNzjCodCM4T4BT_prop13 {
	always all f : File | f in Trash implies once f in Trash
}
pred __repair { idn9CSNzjCodCM4T4BT_prop13 }
check __repair { idn9CSNzjCodCM4T4BT_prop13 <=> prop13o }