open main
pred idNQxYuhoPGBLb6i7uC_prop10 {
  always all f: File | always f in Protected since f in Protected
}
pred __repair { idNQxYuhoPGBLb6i7uC_prop10 }
check __repair { idNQxYuhoPGBLb6i7uC_prop10 <=> prop10o }