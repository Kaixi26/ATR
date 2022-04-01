open main
pred id2YEPgmcbg9WPCs4Y4_prop4 {
    some f : File | eventually (f not in Trash and f in Trash')
}
pred __repair { id2YEPgmcbg9WPCs4Y4_prop4 }
check __repair { id2YEPgmcbg9WPCs4Y4_prop4 <=> prop4o }