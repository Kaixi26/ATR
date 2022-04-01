open main
pred idnBFTXZxHqLuXQwKm8_prop12 {
    all f: File | eventually (always f in Trash)

}
pred __repair { idnBFTXZxHqLuXQwKm8_prop12 }
check __repair { idnBFTXZxHqLuXQwKm8_prop12 <=> prop12o }