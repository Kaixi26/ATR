open main
pred idhBLPxT6TvKLsnZkPo_prop12 {
  always (all f:File |  f in Trash since  eventually some (f& Trash) )
}
pred __repair { idhBLPxT6TvKLsnZkPo_prop12 }
check __repair { idhBLPxT6TvKLsnZkPo_prop12 <=> prop12o }