open main
pred idrWjvRZBER5MKFt6or_prop12 {
	some f: File | eventually always f in Trash
}
pred __repair { idrWjvRZBER5MKFt6or_prop12 }
check __repair { idrWjvRZBER5MKFt6or_prop12 <=> prop12o }