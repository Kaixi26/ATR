open main
pred iduea9qkzurfMX7cZCS_prop8 {
all f1,f2 : File | f1->f2 in link implies eventually f2 in Trash
}
pred __repair { iduea9qkzurfMX7cZCS_prop8 }
check __repair { iduea9qkzurfMX7cZCS_prop8 <=> prop8o }