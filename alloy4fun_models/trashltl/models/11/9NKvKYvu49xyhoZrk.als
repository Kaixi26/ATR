open main
pred id9NKvKYvu49xyhoZrk_prop12 {
  always some t : Trash | after t in Trash or t not in Trash
}
pred __repair { id9NKvKYvu49xyhoZrk_prop12 }
check __repair { id9NKvKYvu49xyhoZrk_prop12 <=> prop12o }