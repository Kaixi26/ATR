open main
pred idgDLM4xqZZCmNs577N_prop12 {
  always (all f:File |  eventually f in Trash since  some (f& Trash) )
}
pred __repair { idgDLM4xqZZCmNs577N_prop12 }
check __repair { idgDLM4xqZZCmNs577N_prop12 <=> prop12o }