open main
pred id2mahNHhQNvDCe7YFg_prop18 {
	always (all f : Protected | f in Trash releases always f in Protected)
}
pred __repair { id2mahNHhQNvDCe7YFg_prop18 }
check __repair { id2mahNHhQNvDCe7YFg_prop18 <=> prop18o }