open main
pred iddbABKk8MBBvF3eCnG_prop8 {
  always(eventually File.link in Trash)
}
pred __repair { iddbABKk8MBBvF3eCnG_prop8 }
check __repair { iddbABKk8MBBvF3eCnG_prop8 <=> prop8o }