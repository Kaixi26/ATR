open main
pred idasYKm4j5tFWvJmbNj_prop8 {
  always all l: File.link | eventually always l in Trash
}
pred __repair { idasYKm4j5tFWvJmbNj_prop8 }
check __repair { idasYKm4j5tFWvJmbNj_prop8 <=> prop8o }