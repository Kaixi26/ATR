open main
pred idbvhsiXPmMguMpLeFy_prop10 {
  always all f:File | f in Protected implies f in Protected' 
}
pred __repair { idbvhsiXPmMguMpLeFy_prop10 }
check __repair { idbvhsiXPmMguMpLeFy_prop10 <=> prop10o }