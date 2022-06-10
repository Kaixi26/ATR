open main
pred idz8QHz6MNbf5LAxj3j_prop12 {
  eventually some f : File | f in Trash => eventually f not in Trash
}
pred __repair { idz8QHz6MNbf5LAxj3j_prop12 }
check __repair { idz8QHz6MNbf5LAxj3j_prop12 <=> prop12o }