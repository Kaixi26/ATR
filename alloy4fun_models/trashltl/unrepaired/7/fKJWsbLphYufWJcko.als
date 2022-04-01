open main
pred idfKJWsbLphYufWJcko_prop8 {
  always some l : File.link | eventually l in Trash 
}
pred __repair { idfKJWsbLphYufWJcko_prop8 }
check __repair { idfKJWsbLphYufWJcko_prop8 <=> prop8o }