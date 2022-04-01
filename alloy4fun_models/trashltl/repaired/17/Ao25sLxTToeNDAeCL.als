open main
pred idAo25sLxTToeNDAeCL_prop18 {
	always (all f:Protected | f in Trash triggered f not in Protected)
}
pred __repair { idAo25sLxTToeNDAeCL_prop18 }
check __repair { idAo25sLxTToeNDAeCL_prop18 <=> prop18o }