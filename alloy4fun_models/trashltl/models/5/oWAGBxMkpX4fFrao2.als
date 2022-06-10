open main
pred idoWAGBxMkpX4fFrao2_prop6 {
  always some f:File | f in Trash implies always f in Trash

}
pred __repair { idoWAGBxMkpX4fFrao2_prop6 }
check __repair { idoWAGBxMkpX4fFrao2_prop6 <=> prop6o }