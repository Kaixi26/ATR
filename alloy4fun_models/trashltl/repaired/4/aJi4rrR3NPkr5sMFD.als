open main
pred idaJi4rrR3NPkr5sMFD_prop5 {
  some f:File | f not in File
}
pred __repair { idaJi4rrR3NPkr5sMFD_prop5 }
check __repair { idaJi4rrR3NPkr5sMFD_prop5 <=> prop5o }