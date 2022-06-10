open main
pred idFBZAjQPMGCSE4DLWT_prop10 {
  all f : File | historically f in Protected implies always f in Protected
}
pred __repair { idFBZAjQPMGCSE4DLWT_prop10 }
check __repair { idFBZAjQPMGCSE4DLWT_prop10 <=> prop10o }