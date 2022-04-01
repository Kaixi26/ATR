open main
pred idYFpBSPD7XWfWpqgox_prop18 {
	always (all f:Protected | f in Trash implies f not in Protected)
}
pred __repair { idYFpBSPD7XWfWpqgox_prop18 }
check __repair { idYFpBSPD7XWfWpqgox_prop18 <=> prop18o }