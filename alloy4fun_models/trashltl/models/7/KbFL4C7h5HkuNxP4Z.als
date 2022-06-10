open main
pred idKbFL4C7h5HkuNxP4Z_prop8 {
  always all l: File.link | always eventually l in Trash
}
pred __repair { idKbFL4C7h5HkuNxP4Z_prop8 }
check __repair { idKbFL4C7h5HkuNxP4Z_prop8 <=> prop8o }