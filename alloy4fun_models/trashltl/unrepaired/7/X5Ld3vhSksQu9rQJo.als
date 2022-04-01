open main
pred idX5Ld3vhSksQu9rQJo_prop8 {
  always all f: File.link | eventually f in Trash
}
pred __repair { idX5Ld3vhSksQu9rQJo_prop8 }
check __repair { idX5Ld3vhSksQu9rQJo_prop8 <=> prop8o }