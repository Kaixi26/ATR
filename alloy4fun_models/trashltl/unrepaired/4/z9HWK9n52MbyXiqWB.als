open main
pred idz9HWK9n52MbyXiqWB_prop5 {
	some f:File | eventually f in Trash and f.link in Trash
}
pred __repair { idz9HWK9n52MbyXiqWB_prop5 }
check __repair { idz9HWK9n52MbyXiqWB_prop5 <=> prop5o }