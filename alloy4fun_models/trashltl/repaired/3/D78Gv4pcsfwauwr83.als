open main
pred idD78Gv4pcsfwauwr83_prop4 {
  	some f: File | f not in Protected implies eventually f in Trash and no f.link

}
pred __repair { idD78Gv4pcsfwauwr83_prop4 }
check __repair { idD78Gv4pcsfwauwr83_prop4 <=> prop4o }