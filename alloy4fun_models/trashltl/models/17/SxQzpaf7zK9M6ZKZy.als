open main
pred idSxQzpaf7zK9M6ZKZy_prop18 {
	always all p: Protected | p not in Trash until p not in Protected 
}
pred __repair { idSxQzpaf7zK9M6ZKZy_prop18 }
check __repair { idSxQzpaf7zK9M6ZKZy_prop18 <=> prop18o }