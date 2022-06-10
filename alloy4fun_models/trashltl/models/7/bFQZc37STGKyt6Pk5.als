open main
pred idbFQZc37STGKyt6Pk5_prop8 {
  always all l : File.link | eventually l in Trash 
}
pred __repair { idbFQZc37STGKyt6Pk5_prop8 }
check __repair { idbFQZc37STGKyt6Pk5_prop8 <=> prop8o }