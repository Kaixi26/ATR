open main
pred idvLeJeGjuyoH3yW2fr_prop12 {
	always all f : File - Protected | eventually f in Trash
  	always all f : Trash - Protected | f in Trash'
}
pred __repair { idvLeJeGjuyoH3yW2fr_prop12 }
check __repair { idvLeJeGjuyoH3yW2fr_prop12 <=> prop12o }