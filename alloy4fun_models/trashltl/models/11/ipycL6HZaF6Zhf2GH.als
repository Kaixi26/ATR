open main
pred idipycL6HZaF6Zhf2GH_prop12 {
  always (all f:File |  f in Trash since  some (f& Trash) )
}
pred __repair { idipycL6HZaF6Zhf2GH_prop12 }
check __repair { idipycL6HZaF6Zhf2GH_prop12 <=> prop12o }