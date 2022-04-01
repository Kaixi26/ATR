open main
pred id9C7u46fpgR7AvwbsX_prop12 {
	always (some f: File | eventually f in Trash and always f in Trash)
}
pred __repair { id9C7u46fpgR7AvwbsX_prop12 }
check __repair { id9C7u46fpgR7AvwbsX_prop12 <=> prop12o }