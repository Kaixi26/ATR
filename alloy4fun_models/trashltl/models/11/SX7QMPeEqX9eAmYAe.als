open main
pred idSX7QMPeEqX9eAmYAe_prop12 {
	always all f:File | eventually f in Trash && (f in Trash until f not in Trash)
}
pred __repair { idSX7QMPeEqX9eAmYAe_prop12 }
check __repair { idSX7QMPeEqX9eAmYAe_prop12 <=> prop12o }