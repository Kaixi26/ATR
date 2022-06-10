open main
pred id6fzeJSMpwTZSLRn8L_prop6 {
 	always some f:File | f in Trash implies always f in Trash'
}
pred __repair { id6fzeJSMpwTZSLRn8L_prop6 }
check __repair { id6fzeJSMpwTZSLRn8L_prop6 <=> prop6o }