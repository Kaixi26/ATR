open main
pred id42hXwBN9a5W8qZ2hW_prop12 {
	eventually (some f:File | (eventually f in Trash) implies (always f in Trash))
}
pred __repair { id42hXwBN9a5W8qZ2hW_prop12 }
check __repair { id42hXwBN9a5W8qZ2hW_prop12 <=> prop12o }