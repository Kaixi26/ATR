open main
pred idTw84fYW8Q3ewiorkw_prop12 {
  	eventually (some f : File-Trash | f in Trash' implies always f in Trash)
}
pred __repair { idTw84fYW8Q3ewiorkw_prop12 }
check __repair { idTw84fYW8Q3ewiorkw_prop12 <=> prop12o }