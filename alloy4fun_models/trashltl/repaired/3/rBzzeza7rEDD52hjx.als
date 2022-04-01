open main
pred idrBzzeza7rEDD52hjx_prop4 {
	some f:File | eventually f in Trash
}
pred __repair { idrBzzeza7rEDD52hjx_prop4 }
check __repair { idrBzzeza7rEDD52hjx_prop4 <=> prop4o }