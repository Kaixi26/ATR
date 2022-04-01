open main
pred idQQSRC7mwa3A5fxisS_prop8 {
  always (all f : File | some link.f implies eventually link.f in Trash)
}
pred __repair { idQQSRC7mwa3A5fxisS_prop8 }
check __repair { idQQSRC7mwa3A5fxisS_prop8 <=> prop8o }