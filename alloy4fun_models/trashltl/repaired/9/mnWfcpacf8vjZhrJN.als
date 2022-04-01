open main
pred idmnWfcpacf8vjZhrJN_prop10 {
  always all f: File | always f in Protected since f in Protected
}
pred __repair { idmnWfcpacf8vjZhrJN_prop10 }
check __repair { idmnWfcpacf8vjZhrJN_prop10 <=> prop10o }