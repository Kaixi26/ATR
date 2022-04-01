open main
pred idJYiTvujCkKbYynmEi_prop12 {
  	eventually (some f : File-Trash | f in Trash implies always f in Trash)
}
pred __repair { idJYiTvujCkKbYynmEi_prop12 }
check __repair { idJYiTvujCkKbYynmEi_prop12 <=> prop12o }