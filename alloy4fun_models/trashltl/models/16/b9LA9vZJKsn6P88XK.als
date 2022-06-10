open main
pred idb9LA9vZJKsn6P88XK_prop17 {
  all f: File |always (eventually f in Trash) implies after File = File-f

}
pred __repair { idb9LA9vZJKsn6P88XK_prop17 }
check __repair { idb9LA9vZJKsn6P88XK_prop17 <=> prop17o }