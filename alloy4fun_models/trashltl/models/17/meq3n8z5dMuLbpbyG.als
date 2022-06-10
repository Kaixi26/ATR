open main
pred idmeq3n8z5dMuLbpbyG_prop18 {
	always all f : Protected | f not in Protected until f in Trash
}
pred __repair { idmeq3n8z5dMuLbpbyG_prop18 }
check __repair { idmeq3n8z5dMuLbpbyG_prop18 <=> prop18o }