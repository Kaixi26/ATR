open main
pred id6sFWsGrZJkhRN2nDn_prop18 {
  always all f : File - Protected | before f in Trash
}
pred __repair { id6sFWsGrZJkhRN2nDn_prop18 }
check __repair { id6sFWsGrZJkhRN2nDn_prop18 <=> prop18o }