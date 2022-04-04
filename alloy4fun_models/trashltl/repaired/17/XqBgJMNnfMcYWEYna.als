open main
pred idXqBgJMNnfMcYWEYna_prop18 {
  always (all f : File | f in Trash triggered f in Protected)
}
pred __repair { idXqBgJMNnfMcYWEYna_prop18 }
check __repair { idXqBgJMNnfMcYWEYna_prop18 <=> prop18o }