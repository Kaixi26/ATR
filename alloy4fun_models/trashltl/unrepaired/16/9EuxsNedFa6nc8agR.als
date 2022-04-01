open main
pred id9EuxsNedFa6nc8agR_prop17 {
  all f: File |always (once f in Trash ) implies always f' not in File and f' not in Trash and f' not in Protected

}
pred __repair { id9EuxsNedFa6nc8agR_prop17 }
check __repair { id9EuxsNedFa6nc8agR_prop17 <=> prop17o }