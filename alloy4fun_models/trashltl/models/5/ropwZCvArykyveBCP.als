open main
pred idropwZCvArykyveBCP_prop6 {
   some f:File | always f in Trash' 
}
pred __repair { idropwZCvArykyveBCP_prop6 }
check __repair { idropwZCvArykyveBCP_prop6 <=> prop6o }