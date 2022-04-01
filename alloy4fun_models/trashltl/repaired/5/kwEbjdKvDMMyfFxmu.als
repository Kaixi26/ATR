open main
pred idkwEbjdKvDMMyfFxmu_prop6 {
	always all f : File | f not in Trash until f in Trash
}
pred __repair { idkwEbjdKvDMMyfFxmu_prop6 }
check __repair { idkwEbjdKvDMMyfFxmu_prop6 <=> prop6o }