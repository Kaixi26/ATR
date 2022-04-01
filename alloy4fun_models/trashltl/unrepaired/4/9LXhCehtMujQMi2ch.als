open main
pred id9LXhCehtMujQMi2ch_prop5 {
	eventually some f:File | f not in Trash and f not in Protected
}
pred __repair { id9LXhCehtMujQMi2ch_prop5 }
check __repair { id9LXhCehtMujQMi2ch_prop5 <=> prop5o }