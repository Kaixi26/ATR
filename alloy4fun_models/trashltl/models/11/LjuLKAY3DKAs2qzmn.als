open main
pred idLjuLKAY3DKAs2qzmn_prop12 {
  always all f: File | eventually f in Trash and f in Trash releases f not in Trash
}
pred __repair { idLjuLKAY3DKAs2qzmn_prop12 }
check __repair { idLjuLKAY3DKAs2qzmn_prop12 <=> prop12o }