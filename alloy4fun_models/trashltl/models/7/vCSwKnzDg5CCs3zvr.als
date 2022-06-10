open main
pred idvCSwKnzDg5CCs3zvr_prop8 {
  always(all f: File | eventually f.link in Trash)
}
pred __repair { idvCSwKnzDg5CCs3zvr_prop8 }
check __repair { idvCSwKnzDg5CCs3zvr_prop8 <=> prop8o }