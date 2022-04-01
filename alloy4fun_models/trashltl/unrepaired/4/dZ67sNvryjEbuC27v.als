open main
pred iddZ67sNvryjEbuC27v_prop5 {
  some f:File | eventually Trash' = Trash + f
}
pred __repair { iddZ67sNvryjEbuC27v_prop5 }
check __repair { iddZ67sNvryjEbuC27v_prop5 <=> prop5o }