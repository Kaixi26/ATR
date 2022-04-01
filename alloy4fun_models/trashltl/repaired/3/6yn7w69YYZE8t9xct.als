open main
pred id6yn7w69YYZE8t9xct_prop4 {
  	some File
	some f:File | eventually f in Trash
}
pred __repair { id6yn7w69YYZE8t9xct_prop4 }
check __repair { id6yn7w69YYZE8t9xct_prop4 <=> prop4o }