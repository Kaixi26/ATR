open main
pred idm3qED7ghmpdpKTaX8_prop5 {
  eventually(some f:File | f not in File)
}
pred __repair { idm3qED7ghmpdpKTaX8_prop5 }
check __repair { idm3qED7ghmpdpKTaX8_prop5 <=> prop5o }