open main
pred idF3gF7GQyte7spP3wa_prop13 {
	eventually all f:Trash | once f not in Trash
}
pred __repair { idF3gF7GQyte7spP3wa_prop13 }
check __repair { idF3gF7GQyte7spP3wa_prop13 <=> prop13o }