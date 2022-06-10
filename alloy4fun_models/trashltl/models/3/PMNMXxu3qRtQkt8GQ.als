open main
pred idPMNMXxu3qRtQkt8GQ_prop4 {
  	some f: File | after f not in Protected implies eventually always f in Trash

}
pred __repair { idPMNMXxu3qRtQkt8GQ_prop4 }
check __repair { idPMNMXxu3qRtQkt8GQ_prop4 <=> prop4o }