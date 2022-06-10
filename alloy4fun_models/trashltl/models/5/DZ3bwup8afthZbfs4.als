open main
pred idDZ3bwup8afthZbfs4_prop6 {
	always (some f:File | f in Trash releases always f in Trash)
}
pred __repair { idDZ3bwup8afthZbfs4_prop6 }
check __repair { idDZ3bwup8afthZbfs4_prop6 <=> prop6o }