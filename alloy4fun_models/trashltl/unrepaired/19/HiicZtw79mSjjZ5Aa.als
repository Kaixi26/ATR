open main
pred idHiicZtw79mSjjZ5Aa_prop20 {
  always (all  f : File | f in Trash since f not in Protected)
}
pred __repair { idHiicZtw79mSjjZ5Aa_prop20 }
check __repair { idHiicZtw79mSjjZ5Aa_prop20 <=> prop20o }