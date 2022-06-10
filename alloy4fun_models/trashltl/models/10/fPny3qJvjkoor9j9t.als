open main
pred idfPny3qJvjkoor9j9t_prop11 {
  all f:File | always (f not in Protected implies after f in Protected)

}
pred __repair { idfPny3qJvjkoor9j9t_prop11 }
check __repair { idfPny3qJvjkoor9j9t_prop11 <=> prop11o }