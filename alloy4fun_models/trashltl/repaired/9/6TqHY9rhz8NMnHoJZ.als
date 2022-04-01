open main
pred id6TqHY9rhz8NMnHoJZ_prop10 {
  all f : File | once f in Protected implies always f in Protected
}
pred __repair { id6TqHY9rhz8NMnHoJZ_prop10 }
check __repair { id6TqHY9rhz8NMnHoJZ_prop10 <=> prop10o }