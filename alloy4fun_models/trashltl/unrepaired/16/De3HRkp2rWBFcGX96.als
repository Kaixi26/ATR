open main
pred idDe3HRkp2rWBFcGX96_prop17 {
  all f: File |always (eventually f in Trash releases f' in File)

}
pred __repair { idDe3HRkp2rWBFcGX96_prop17 }
check __repair { idDe3HRkp2rWBFcGX96_prop17 <=> prop17o }