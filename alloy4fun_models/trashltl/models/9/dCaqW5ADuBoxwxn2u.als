open main
pred iddCaqW5ADuBoxwxn2u_prop10 {
  always all f: File | once f in Protected implies always f in Protected
}
pred __repair { iddCaqW5ADuBoxwxn2u_prop10 }
check __repair { iddCaqW5ADuBoxwxn2u_prop10 <=> prop10o }