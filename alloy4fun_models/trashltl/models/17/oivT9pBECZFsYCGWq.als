open main
pred idoivT9pBECZFsYCGWq_prop18 {
	always all p:Protected | p in File - Protected iff after p in Trash
}
pred __repair { idoivT9pBECZFsYCGWq_prop18 }
check __repair { idoivT9pBECZFsYCGWq_prop18 <=> prop18o }