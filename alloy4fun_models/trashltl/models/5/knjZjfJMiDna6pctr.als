open main
pred idknjZjfJMiDna6pctr_prop6 {
  all f : File | (eventually f in Trash) implies (always f in Trash)
}
pred __repair { idknjZjfJMiDna6pctr_prop6 }
check __repair { idknjZjfJMiDna6pctr_prop6 <=> prop6o }