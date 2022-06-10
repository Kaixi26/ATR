open main
pred idbAPL8vujSi3o7pebs_prop8 {
  always (all f : File | some f.link implies eventually link.f in Trash)
}
pred __repair { idbAPL8vujSi3o7pebs_prop8 }
check __repair { idbAPL8vujSi3o7pebs_prop8 <=> prop8o }