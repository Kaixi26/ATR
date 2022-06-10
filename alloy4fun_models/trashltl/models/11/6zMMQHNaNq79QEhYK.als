open main
pred id6zMMQHNaNq79QEhYK_prop12 {
  all f: File | eventually f in Trash implies always f in Trash
}
pred __repair { id6zMMQHNaNq79QEhYK_prop12 }
check __repair { id6zMMQHNaNq79QEhYK_prop12 <=> prop12o }