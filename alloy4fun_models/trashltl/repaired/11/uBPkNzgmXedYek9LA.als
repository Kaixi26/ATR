open main
pred iduBPkNzgmXedYek9LA_prop12 {
  always (all f:File |some (f &Trash)  since  f in Trash )
}
pred __repair { iduBPkNzgmXedYek9LA_prop12 }
check __repair { iduBPkNzgmXedYek9LA_prop12 <=> prop12o }