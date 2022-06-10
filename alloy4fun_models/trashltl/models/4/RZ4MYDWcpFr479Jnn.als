open main
pred idRZ4MYDWcpFr479Jnn_prop5 {
  some f: File | eventually (f in Trash)
}
pred __repair { idRZ4MYDWcpFr479Jnn_prop5 }
check __repair { idRZ4MYDWcpFr479Jnn_prop5 <=> prop5o }