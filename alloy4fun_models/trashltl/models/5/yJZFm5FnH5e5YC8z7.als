open main
pred idyJZFm5FnH5e5YC8z7_prop6 {
  eventually some f:File | always f not in File' 
}
pred __repair { idyJZFm5FnH5e5YC8z7_prop6 }
check __repair { idyJZFm5FnH5e5YC8z7_prop6 <=> prop6o }