open main
pred idL6kpaSGfY2Lo2JLkP_prop9 {
	always (all p: Protected | always p not in Trash)
}
pred __repair { idL6kpaSGfY2Lo2JLkP_prop9 }
check __repair { idL6kpaSGfY2Lo2JLkP_prop9 <=> prop9o }