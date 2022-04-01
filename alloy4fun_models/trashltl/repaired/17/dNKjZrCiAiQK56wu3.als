open main
pred iddNKjZrCiAiQK56wu3_prop18 {
	always all p:Protected | p in File - Protected iff p in Trash
}
pred __repair { iddNKjZrCiAiQK56wu3_prop18 }
check __repair { iddNKjZrCiAiQK56wu3_prop18 <=> prop18o }