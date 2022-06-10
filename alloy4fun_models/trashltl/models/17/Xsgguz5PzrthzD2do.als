open main
pred idXsgguz5PzrthzD2do_prop18 {
	always all p: Protected | p not in Protected implies p in Trash
}
pred __repair { idXsgguz5PzrthzD2do_prop18 }
check __repair { idXsgguz5PzrthzD2do_prop18 <=> prop18o }