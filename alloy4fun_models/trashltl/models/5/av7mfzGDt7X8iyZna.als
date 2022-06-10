open main
pred idav7mfzGDt7X8iyZna_prop6 {
  	all f:File | f in Trash and always f in Trash
}
pred __repair { idav7mfzGDt7X8iyZna_prop6 }
check __repair { idav7mfzGDt7X8iyZna_prop6 <=> prop6o }