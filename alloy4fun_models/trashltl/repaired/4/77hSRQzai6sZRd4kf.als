open main
pred id77hSRQzai6sZRd4kf_prop5 {
  always some f : File | eventually f not in File
}
pred __repair { id77hSRQzai6sZRd4kf_prop5 }
check __repair { id77hSRQzai6sZRd4kf_prop5 <=> prop5o }