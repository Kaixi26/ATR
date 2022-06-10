open main
pred ido5oEGeieMJgvZur9o_prop8 {
  always some f : File | eventually f.link in Trash
}
pred __repair { ido5oEGeieMJgvZur9o_prop8 }
check __repair { ido5oEGeieMJgvZur9o_prop8 <=> prop8o }