open main
pred idmn7f2W74aqtiwqzsw_prop19 {
	(all f:File | eventually (f in Protected until f in Trash))
}
pred __repair { idmn7f2W74aqtiwqzsw_prop19 }
check __repair { idmn7f2W74aqtiwqzsw_prop19 <=> prop19o }