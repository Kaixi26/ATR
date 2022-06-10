open main
pred idMmxwXJbpoKps8wWMi_prop11 {
  all f:File | always f not in Protected implies after f in Protected

}
pred __repair { idMmxwXJbpoKps8wWMi_prop11 }
check __repair { idMmxwXJbpoKps8wWMi_prop11 <=> prop11o }