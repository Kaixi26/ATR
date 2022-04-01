open main
pred idrC5gjJN7tcrgEHJ5X_prop8 {
  always(after (eventually File.link in Trash))
}
pred __repair { idrC5gjJN7tcrgEHJ5X_prop8 }
check __repair { idrC5gjJN7tcrgEHJ5X_prop8 <=> prop8o }