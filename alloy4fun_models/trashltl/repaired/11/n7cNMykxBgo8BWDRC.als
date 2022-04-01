open main
pred idn7cNMykxBgo8BWDRC_prop12 {
  always (all f:File | eventually f in Trash since  eventually some (f& Trash) )
}
pred __repair { idn7cNMykxBgo8BWDRC_prop12 }
check __repair { idn7cNMykxBgo8BWDRC_prop12 <=> prop12o }