open main
pred idEot6zHz7fhFXvWnAe_prop16 {
  all f:File | historically f in Protected implies f in Protected
}
pred __repair { idEot6zHz7fhFXvWnAe_prop16 }
check __repair { idEot6zHz7fhFXvWnAe_prop16 <=> prop16o }