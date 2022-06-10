open main
pred idBP9SRic6yDQGMt9Jd_prop18 {
	always all p : Protected | p not in Protected' => p in Trash'
}
pred __repair { idBP9SRic6yDQGMt9Jd_prop18 }
check __repair { idBP9SRic6yDQGMt9Jd_prop18 <=> prop18o }