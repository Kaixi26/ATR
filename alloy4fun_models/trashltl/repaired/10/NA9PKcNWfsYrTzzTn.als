open main
pred idNA9PKcNWfsYrTzzTn_prop11 {
all f : File | f not in Protected implies after f in Protected'
}
pred __repair { idNA9PKcNWfsYrTzzTn_prop11 }
check __repair { idNA9PKcNWfsYrTzzTn_prop11 <=> prop11o }