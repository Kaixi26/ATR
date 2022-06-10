open main
pred idTjNTP2jnxjZWKKgAt_prop12 {
  
  eventually some Trash and (always all f: File | f in Trash implies always f in Trash)
}
pred __repair { idTjNTP2jnxjZWKKgAt_prop12 }
check __repair { idTjNTP2jnxjZWKKgAt_prop12 <=> prop12o }