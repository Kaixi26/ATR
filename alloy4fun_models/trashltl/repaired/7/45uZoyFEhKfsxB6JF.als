open main
pred id45uZoyFEhKfsxB6JF_prop8 {
	always (some f : link.File | eventually f in Trash)
}
pred __repair { id45uZoyFEhKfsxB6JF_prop8 }
check __repair { id45uZoyFEhKfsxB6JF_prop8 <=> prop8o }