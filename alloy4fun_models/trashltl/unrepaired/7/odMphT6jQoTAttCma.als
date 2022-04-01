open main
pred idodMphT6jQoTAttCma_prop8 {
  always (all f : File | some f.link implies eventually f.link in Trash)
}
pred __repair { idodMphT6jQoTAttCma_prop8 }
check __repair { idodMphT6jQoTAttCma_prop8 <=> prop8o }