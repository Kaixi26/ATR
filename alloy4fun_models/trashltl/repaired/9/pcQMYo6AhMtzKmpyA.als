open main
pred idpcQMYo6AhMtzKmpyA_prop10 {
  always(all f:File | f in Protected implies always f in Protected)
}
pred __repair { idpcQMYo6AhMtzKmpyA_prop10 }
check __repair { idpcQMYo6AhMtzKmpyA_prop10 <=> prop10o }