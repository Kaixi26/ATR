open main
pred idXq69gGZj3JSQr2zbq_prop4 {
  	some f: File | once f not in Protected and eventually always f in Trash

}
pred __repair { idXq69gGZj3JSQr2zbq_prop4 }
check __repair { idXq69gGZj3JSQr2zbq_prop4 <=> prop4o }