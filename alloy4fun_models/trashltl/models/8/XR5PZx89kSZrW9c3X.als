open main
pred idXR5PZx89kSZrW9c3X_prop9 {
	all p : Protected | p not in Trash' and p.(^link) not in Trash'
}
pred __repair { idXR5PZx89kSZrW9c3X_prop9 }
check __repair { idXR5PZx89kSZrW9c3X_prop9 <=> prop9o }