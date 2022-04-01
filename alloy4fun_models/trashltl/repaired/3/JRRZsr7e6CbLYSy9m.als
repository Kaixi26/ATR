open main
pred idJRRZsr7e6CbLYSy9m_prop4 {
  	some f: File | eventually f in Trash implies f not in Protected

}
pred __repair { idJRRZsr7e6CbLYSy9m_prop4 }
check __repair { idJRRZsr7e6CbLYSy9m_prop4 <=> prop4o }