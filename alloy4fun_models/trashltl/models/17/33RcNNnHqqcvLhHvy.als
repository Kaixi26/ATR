open main
pred id33RcNNnHqqcvLhHvy_prop18 {
	(all f:Protected | f not in Protected since f in Trash)
}
pred __repair { id33RcNNnHqqcvLhHvy_prop18 }
check __repair { id33RcNNnHqqcvLhHvy_prop18 <=> prop18o }