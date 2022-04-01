open main
pred idyyZv62T6cLQW9hKm7_prop9 {
  all f: File | always after f not in Trash implies once f in Protected
}
pred __repair { idyyZv62T6cLQW9hKm7_prop9 }
check __repair { idyyZv62T6cLQW9hKm7_prop9 <=> prop9o }