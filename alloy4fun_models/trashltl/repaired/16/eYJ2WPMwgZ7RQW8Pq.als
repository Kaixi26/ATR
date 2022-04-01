open main
pred ideYJ2WPMwgZ7RQW8Pq_prop17 {
  all f: File |eventually (f in Trash implies File' = File - f)

}
pred __repair { ideYJ2WPMwgZ7RQW8Pq_prop17 }
check __repair { ideYJ2WPMwgZ7RQW8Pq_prop17 <=> prop17o }