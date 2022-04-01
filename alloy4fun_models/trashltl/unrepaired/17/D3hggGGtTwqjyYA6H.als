open main
pred idD3hggGGtTwqjyYA6H_prop18 {
  always (all f : File | f in Protected until f in Trash)
}
pred __repair { idD3hggGGtTwqjyYA6H_prop18 }
check __repair { idD3hggGGtTwqjyYA6H_prop18 <=> prop18o }