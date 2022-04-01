open main
pred idhMLJfXyQuAQMgMu7T_prop17 {
  all f: File |always ((eventually f in Trash) triggered File' = File - f)

}
pred __repair { idhMLJfXyQuAQMgMu7T_prop17 }
check __repair { idhMLJfXyQuAQMgMu7T_prop17 <=> prop17o }