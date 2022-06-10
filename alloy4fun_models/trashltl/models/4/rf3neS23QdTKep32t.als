open main
pred idrf3neS23QdTKep32t_prop5 {
  always all f: File | eventually f not in File
}
pred __repair { idrf3neS23QdTKep32t_prop5 }
check __repair { idrf3neS23QdTKep32t_prop5 <=> prop5o }