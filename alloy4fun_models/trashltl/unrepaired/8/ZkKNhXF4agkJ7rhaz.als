open main
pred idZkKNhXF4agkJ7rhaz_prop9 {
	all f: File | always(f not in Trash) since f in Protected 
}
pred __repair { idZkKNhXF4agkJ7rhaz_prop9 }
check __repair { idZkKNhXF4agkJ7rhaz_prop9 <=> prop9o }