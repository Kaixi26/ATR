open main
pred idj3szbh8GRQSRYkja6_prop18 {
	always all p: Protected | p not in Protected implies after p in Trash
}
pred __repair { idj3szbh8GRQSRYkja6_prop18 }
check __repair { idj3szbh8GRQSRYkja6_prop18 <=> prop18o }