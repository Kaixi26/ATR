open main
pred idFYvQxDkJbNSL94RH2_prop12 {
  always all t : Trash | eventually after t not in Trash
}
pred __repair { idFYvQxDkJbNSL94RH2_prop12 }
check __repair { idFYvQxDkJbNSL94RH2_prop12 <=> prop12o }