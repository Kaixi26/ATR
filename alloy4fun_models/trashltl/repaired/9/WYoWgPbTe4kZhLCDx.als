open main
pred idWYoWgPbTe4kZhLCDx_prop10 {
  always all f: File | always (eventually f in Protected implies always f in Protected)
  
}
pred __repair { idWYoWgPbTe4kZhLCDx_prop10 }
check __repair { idWYoWgPbTe4kZhLCDx_prop10 <=> prop10o }