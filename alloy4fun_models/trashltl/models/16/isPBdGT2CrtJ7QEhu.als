open main
pred idisPBdGT2CrtJ7QEhu_prop17 {
  all f: File |always (File' = File - f since eventually f in Trash)

}
pred __repair { idisPBdGT2CrtJ7QEhu_prop17 }
check __repair { idisPBdGT2CrtJ7QEhu_prop17 <=> prop17o }