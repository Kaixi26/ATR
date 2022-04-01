open main
pred idfcT9RNsjX22mhTsq9_prop12 {
  eventually some f : File | f in Trash => after (always eventually f not in Trash or f in Trash)
}
pred __repair { idfcT9RNsjX22mhTsq9_prop12 }
check __repair { idfcT9RNsjX22mhTsq9_prop12 <=> prop12o }