open main
pred idtzE27AJcKM9oAzRsM_prop9 {
	all p : Protected | p not in Trash' and p.^link not in Trash'
}
pred __repair { idtzE27AJcKM9oAzRsM_prop9 }
check __repair { idtzE27AJcKM9oAzRsM_prop9 <=> prop9o }