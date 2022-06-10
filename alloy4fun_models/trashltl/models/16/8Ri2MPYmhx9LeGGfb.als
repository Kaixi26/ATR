open main
pred id8Ri2MPYmhx9LeGGfb_prop17 {
  all f: File | always f in Trash releases f' in File

}
pred __repair { id8Ri2MPYmhx9LeGGfb_prop17 }
check __repair { id8Ri2MPYmhx9LeGGfb_prop17 <=> prop17o }