open main
pred idZ6M5XzHNXysbxneyv_prop19 {
	always (all f:Protected | f in Trash releases f in Protected)
}
pred __repair { idZ6M5XzHNXysbxneyv_prop19 }
check __repair { idZ6M5XzHNXysbxneyv_prop19 <=> prop19o }