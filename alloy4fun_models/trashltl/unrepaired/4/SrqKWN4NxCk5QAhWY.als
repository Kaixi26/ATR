open main
pred idSrqKWN4NxCk5QAhWY_prop5 {
  some f : File | eventually f in Trash and f not in File
}
pred __repair { idSrqKWN4NxCk5QAhWY_prop5 }
check __repair { idSrqKWN4NxCk5QAhWY_prop5 <=> prop5o }