open main
pred idKXsgZ57MqBKsYpigv_prop12 {
	all f : File | eventually f in Trash => always f in Trash
}
pred __repair { idKXsgZ57MqBKsYpigv_prop12 }
check __repair { idKXsgZ57MqBKsYpigv_prop12 <=> prop12o }