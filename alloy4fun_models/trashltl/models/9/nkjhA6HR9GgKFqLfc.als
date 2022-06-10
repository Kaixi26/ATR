open main
pred idnkjhA6HR9GgKFqLfc_prop10 {
	always all p : Protected | p in Protected => always p in Protected
}
pred __repair { idnkjhA6HR9GgKFqLfc_prop10 }
check __repair { idnkjhA6HR9GgKFqLfc_prop10 <=> prop10o }