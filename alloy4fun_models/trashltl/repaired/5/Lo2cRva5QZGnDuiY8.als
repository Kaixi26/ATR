open main
pred idLo2cRva5QZGnDuiY8_prop6 {
    all f : File | f in Trash implies after always f in Trash
}
pred __repair { idLo2cRva5QZGnDuiY8_prop6 }
check __repair { idLo2cRva5QZGnDuiY8_prop6 <=> prop6o }