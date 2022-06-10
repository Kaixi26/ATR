open main
pred idFZ28CNLebygEuv5XR_prop6 {
	all f:File | f in Trash implies always f in Trash 
}
pred __repair { idFZ28CNLebygEuv5XR_prop6 }
check __repair { idFZ28CNLebygEuv5XR_prop6 <=> prop6o }