open main
pred idHfDiHwqbDvtMw6vHZ_prop17 {
  all f: File | always (File' = File - f since f in Trash)

}
pred __repair { idHfDiHwqbDvtMw6vHZ_prop17 }
check __repair { idHfDiHwqbDvtMw6vHZ_prop17 <=> prop17o }