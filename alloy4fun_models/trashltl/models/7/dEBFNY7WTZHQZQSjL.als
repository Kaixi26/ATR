open main
pred iddEBFNY7WTZHQZQSjL_prop8 {
  eventually ( all f1,f2 : File | f1->f2 in link implies f2 in Trash )
  
}
pred __repair { iddEBFNY7WTZHQZQSjL_prop8 }
check __repair { iddEBFNY7WTZHQZQSjL_prop8 <=> prop8o }