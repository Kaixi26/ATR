open main
pred idthXpBjKC9Eby22HTs_prop6 {
  always some f : Trash | once f in Trash implies always f in Trash
}
pred __repair { idthXpBjKC9Eby22HTs_prop6 }
check __repair { idthXpBjKC9Eby22HTs_prop6 <=> prop6o }