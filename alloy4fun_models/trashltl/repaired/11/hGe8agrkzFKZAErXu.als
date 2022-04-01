open main
pred idhGe8agrkzFKZAErXu_prop12 {
  eventually some f : File | f in Trash => after (always eventually f not in Trash)
}
pred __repair { idhGe8agrkzFKZAErXu_prop12 }
check __repair { idhGe8agrkzFKZAErXu_prop12 <=> prop12o }