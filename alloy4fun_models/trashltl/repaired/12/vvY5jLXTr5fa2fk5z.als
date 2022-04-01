open main
pred idvvY5jLXTr5fa2fk5z_prop13 {
	always some f : File | always f in Trash implies once f in Trash
}
pred __repair { idvvY5jLXTr5fa2fk5z_prop13 }
check __repair { idvvY5jLXTr5fa2fk5z_prop13 <=> prop13o }