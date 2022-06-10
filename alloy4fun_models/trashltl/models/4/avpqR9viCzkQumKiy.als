open main
pred idavpqR9viCzkQumKiy_prop5 {
  some f : File | eventually f in Trash and link.f in Trash
}
pred __repair { idavpqR9viCzkQumKiy_prop5 }
check __repair { idavpqR9viCzkQumKiy_prop5 <=> prop5o }