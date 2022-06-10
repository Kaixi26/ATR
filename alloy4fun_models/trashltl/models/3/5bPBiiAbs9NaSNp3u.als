open main
pred id5bPBiiAbs9NaSNp3u_prop4 {
  	some f: File | eventually always  f in Trash

}
pred __repair { id5bPBiiAbs9NaSNp3u_prop4 }
check __repair { id5bPBiiAbs9NaSNp3u_prop4 <=> prop4o }