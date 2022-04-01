open main
pred id4woBFcKXZrqCSvmaB_prop10 {
  always all f: File | always f in Protected since f in Protected
}
pred __repair { id4woBFcKXZrqCSvmaB_prop10 }
check __repair { id4woBFcKXZrqCSvmaB_prop10 <=> prop10o }