open main
pred id3KS9XkZjn4h6nhe5z_prop8 {
  always (all f : File | some link.f implies eventually link.f in Trash)
}
pred __repair { id3KS9XkZjn4h6nhe5z_prop8 }
check __repair { id3KS9XkZjn4h6nhe5z_prop8 <=> prop8o }