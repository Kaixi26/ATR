open main
pred idvS5tsgbxYQFfKEv5Q_prop12 {
	always( some f:File | eventually f in Trash)
}
pred __repair { idvS5tsgbxYQFfKEv5Q_prop12 }
check __repair { idvS5tsgbxYQFfKEv5Q_prop12 <=> prop12o }