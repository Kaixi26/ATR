open main
pred id5iFdhhFELT5o9gndY_prop8 {
  always (some File.link implies eventually File.link in Trash)
}
pred __repair { id5iFdhhFELT5o9gndY_prop8 }
check __repair { id5iFdhhFELT5o9gndY_prop8 <=> prop8o }