open main
pred id3fXfG7zR2BEJj4e3K_prop18 {
	always all p: Protected | p in Protected until p in Trash
}
pred __repair { id3fXfG7zR2BEJj4e3K_prop18 }
check __repair { id3fXfG7zR2BEJj4e3K_prop18 <=> prop18o }