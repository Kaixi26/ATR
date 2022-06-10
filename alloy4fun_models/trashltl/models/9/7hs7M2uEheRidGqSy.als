open main
pred id7hs7M2uEheRidGqSy_prop10 {
  all f:File | once f in Protected implies always f in Protected
}
pred __repair { id7hs7M2uEheRidGqSy_prop10 }
check __repair { id7hs7M2uEheRidGqSy_prop10 <=> prop10o }