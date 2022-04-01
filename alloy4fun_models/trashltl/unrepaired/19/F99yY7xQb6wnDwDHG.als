open main
pred idF99yY7xQb6wnDwDHG_prop20 {
	always all f : File | f in Trash => historically f not in Protected
}
pred __repair { idF99yY7xQb6wnDwDHG_prop20 }
check __repair { idF99yY7xQb6wnDwDHG_prop20 <=> prop20o }