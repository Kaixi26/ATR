open main
pred idnsscKreaNJjm2zscG_prop8 {
    all l: File.link | always (eventually l in Trash)
}
pred __repair { idnsscKreaNJjm2zscG_prop8 }
check __repair { idnsscKreaNJjm2zscG_prop8 <=> prop8o }