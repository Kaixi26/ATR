open main
pred idsw3jAvSRSnvfdrJv3_prop10 {
  always (all p: Protected | always p in Protected)
}
pred __repair { idsw3jAvSRSnvfdrJv3_prop10 }
check __repair { idsw3jAvSRSnvfdrJv3_prop10 <=> prop10o }