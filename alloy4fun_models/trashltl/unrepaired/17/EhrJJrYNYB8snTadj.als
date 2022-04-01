open main
pred idEhrJJrYNYB8snTadj_prop18 {
	always all f: File | (f in Protected until f in Trash)
}
pred __repair { idEhrJJrYNYB8snTadj_prop18 }
check __repair { idEhrJJrYNYB8snTadj_prop18 <=> prop18o }