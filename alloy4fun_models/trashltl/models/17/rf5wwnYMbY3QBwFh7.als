open main
pred idrf5wwnYMbY3QBwFh7_prop18 {
  always (all f : File | (before f in Protected) implies f in Trash)
}
pred __repair { idrf5wwnYMbY3QBwFh7_prop18 }
check __repair { idrf5wwnYMbY3QBwFh7_prop18 <=> prop18o }