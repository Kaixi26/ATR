open main
pred idrtiJinbXHGAgmE9yi_prop6 {
 	some f:File | f in Trash implies always f in Trash'
}
pred __repair { idrtiJinbXHGAgmE9yi_prop6 }
check __repair { idrtiJinbXHGAgmE9yi_prop6 <=> prop6o }