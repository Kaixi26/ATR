open main
pred idziWorWQSJfeLtrAiz_prop9 {
	all f: Protected | always f not in Trash
}
pred __repair { idziWorWQSJfeLtrAiz_prop9 }
check __repair { idziWorWQSJfeLtrAiz_prop9 <=> prop9o }