open main
pred idgMkDxcpmRgNSshrwb_prop10 {
  all f: File | always f in Protected since f in Protected
}
pred __repair { idgMkDxcpmRgNSshrwb_prop10 }
check __repair { idgMkDxcpmRgNSshrwb_prop10 <=> prop10o }