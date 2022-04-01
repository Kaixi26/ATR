open main
pred id8tppbx3iPobJ9C39F_prop6 {
	all f: File | always (f in Trash since f in Trash)
}
pred __repair { id8tppbx3iPobJ9C39F_prop6 }
check __repair { id8tppbx3iPobJ9C39F_prop6 <=> prop6o }