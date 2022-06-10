open main
pred idjM2o7nk6hMtgMxWuv_prop17 {
  all f: File |eventually (always f' not in File since f in Trash)

}
pred __repair { idjM2o7nk6hMtgMxWuv_prop17 }
check __repair { idjM2o7nk6hMtgMxWuv_prop17 <=> prop17o }