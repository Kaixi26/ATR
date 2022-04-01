open main
pred idtNYhx8TtDTaNtZEoM_prop13 {
	always all f : File | always f in Trash implies once f in Trash
}
pred __repair { idtNYhx8TtDTaNtZEoM_prop13 }
check __repair { idtNYhx8TtDTaNtZEoM_prop13 <=> prop13o }