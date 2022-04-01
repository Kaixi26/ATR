open main
pred idgLCf8g2akCNmSHf7Z_prop4 {
  	some f: File | eventually (always f in Trash) and eventually (always f.link in Trash)

}
pred __repair { idgLCf8g2akCNmSHf7Z_prop4 }
check __repair { idgLCf8g2akCNmSHf7Z_prop4 <=> prop4o }