open main
pred idBwPhyrd6F3Fr7zhGc_prop12 {
  always (all f:File |  always f in Trash since  some (f& Trash) )
}
pred __repair { idBwPhyrd6F3Fr7zhGc_prop12 }
check __repair { idBwPhyrd6F3Fr7zhGc_prop12 <=> prop12o }