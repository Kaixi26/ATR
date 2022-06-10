open main
pred idAuRh3t8nqWw6kF4rx_prop12 {
	eventually always some f:File | f not in Trash implies f in Trash'
}
pred __repair { idAuRh3t8nqWw6kF4rx_prop12 }
check __repair { idAuRh3t8nqWw6kF4rx_prop12 <=> prop12o }