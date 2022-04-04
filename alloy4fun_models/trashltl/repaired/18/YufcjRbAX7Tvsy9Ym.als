open main
pred idYufcjRbAX7Tvsy9Ym_prop19 {
  always (all f : File | f in Protected until f in Trash)
}
pred __repair { idYufcjRbAX7Tvsy9Ym_prop19 }
check __repair { idYufcjRbAX7Tvsy9Ym_prop19 <=> prop19o }