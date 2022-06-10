open main
pred idWjon38iAxCPNAsw5m_prop14 {
  all f:File | ((f in Protected) and (f in Trash)) implies f not in Protected'

}
pred __repair { idWjon38iAxCPNAsw5m_prop14 }
check __repair { idWjon38iAxCPNAsw5m_prop14 <=> prop14o }