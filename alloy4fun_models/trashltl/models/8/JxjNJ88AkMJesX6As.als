open main
pred idJxjNJ88AkMJesX6As_prop9 {
  all f: File | always f not in Trash since f in Protected
}
pred __repair { idJxjNJ88AkMJesX6As_prop9 }
check __repair { idJxjNJ88AkMJesX6As_prop9 <=> prop9o }