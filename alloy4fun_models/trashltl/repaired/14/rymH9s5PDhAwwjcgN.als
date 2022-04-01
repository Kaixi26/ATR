open main
pred idrymH9s5PDhAwwjcgN_prop15 {
	all f : (File - Trash) | eventually f in Trash
}
pred __repair { idrymH9s5PDhAwwjcgN_prop15 }
check __repair { idrymH9s5PDhAwwjcgN_prop15 <=> prop15o }