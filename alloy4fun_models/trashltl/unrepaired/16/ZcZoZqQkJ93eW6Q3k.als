open main
pred idZcZoZqQkJ93eW6Q3k_prop17 {
  all f: File |always (eventually f in Trash releases f' not in File)

}
pred __repair { idZcZoZqQkJ93eW6Q3k_prop17 }
check __repair { idZcZoZqQkJ93eW6Q3k_prop17 <=> prop17o }