open main
pred iddZCEf9hmJ2ocne3CJ_prop5 {
  some f: File | eventually (always File = File - f)
}
pred __repair { iddZCEf9hmJ2ocne3CJ_prop5 }
check __repair { iddZCEf9hmJ2ocne3CJ_prop5 <=> prop5o }