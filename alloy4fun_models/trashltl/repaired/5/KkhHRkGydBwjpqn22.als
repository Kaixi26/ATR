open main
pred idKkhHRkGydBwjpqn22_prop6 {
   all f:File | f in Trash and always f in Trash' 
}
pred __repair { idKkhHRkGydBwjpqn22_prop6 }
check __repair { idKkhHRkGydBwjpqn22_prop6 <=> prop6o }