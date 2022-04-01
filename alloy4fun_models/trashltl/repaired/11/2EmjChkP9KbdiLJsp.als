open main
pred id2EmjChkP9KbdiLJsp_prop12 {
	eventually all f : File | f not in Trash implies f in Trash'
}
pred __repair { id2EmjChkP9KbdiLJsp_prop12 }
check __repair { id2EmjChkP9KbdiLJsp_prop12 <=> prop12o }