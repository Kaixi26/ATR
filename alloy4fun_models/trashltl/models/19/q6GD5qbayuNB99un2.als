open main
pred idq6GD5qbayuNB99un2_prop20 {
	always all f : Protected | f in Trash since f not in Protected 
}
pred __repair { idq6GD5qbayuNB99un2_prop20 }
check __repair { idq6GD5qbayuNB99un2_prop20 <=> prop20o }