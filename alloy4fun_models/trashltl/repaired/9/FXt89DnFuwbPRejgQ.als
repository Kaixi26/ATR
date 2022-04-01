open main
pred idFXt89DnFuwbPRejgQ_prop10 {
  always all f: File | always (f in Protected implies after always f in Protected)
}
pred __repair { idFXt89DnFuwbPRejgQ_prop10 }
check __repair { idFXt89DnFuwbPRejgQ_prop10 <=> prop10o }