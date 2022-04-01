open main
pred idggLDkPyvAiDv4tXnW_prop5 {
  some f:File | eventually f not in File
}
pred __repair { idggLDkPyvAiDv4tXnW_prop5 }
check __repair { idggLDkPyvAiDv4tXnW_prop5 <=> prop5o }