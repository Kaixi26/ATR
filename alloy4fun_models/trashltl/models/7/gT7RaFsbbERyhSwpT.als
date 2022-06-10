open main
pred idgT7RaFsbbERyhSwpT_prop8 {
  always (all f : File | some link.f implies eventually f.link in Trash)
}
pred __repair { idgT7RaFsbbERyhSwpT_prop8 }
check __repair { idgT7RaFsbbERyhSwpT_prop8 <=> prop8o }