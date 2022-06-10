open main
pred idAQfFXN7oJ5svMmXLC_prop18 {
	always (all f:Protected | f not in Protected since f in Trash)
}
pred __repair { idAQfFXN7oJ5svMmXLC_prop18 }
check __repair { idAQfFXN7oJ5svMmXLC_prop18 <=> prop18o }