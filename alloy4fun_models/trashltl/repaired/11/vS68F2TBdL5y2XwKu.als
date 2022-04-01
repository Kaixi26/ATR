open main
pred idvS68F2TBdL5y2XwKu_prop12 {
	always (some f:File | f not in Trash implies eventually always f in Trash)
}
pred __repair { idvS68F2TBdL5y2XwKu_prop12 }
check __repair { idvS68F2TBdL5y2XwKu_prop12 <=> prop12o }