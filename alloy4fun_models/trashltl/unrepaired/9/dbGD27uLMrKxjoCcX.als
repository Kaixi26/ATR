open main
pred iddbGD27uLMrKxjoCcX_prop10 {
  always all f : File | ((f in Protected implies f  in Protected) or ( f not in Protected implies f not in Protected))
  
}
pred __repair { iddbGD27uLMrKxjoCcX_prop10 }
check __repair { iddbGD27uLMrKxjoCcX_prop10 <=> prop10o }