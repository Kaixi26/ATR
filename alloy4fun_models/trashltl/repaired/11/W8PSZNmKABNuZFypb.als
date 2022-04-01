open main
pred idW8PSZNmKABNuZFypb_prop12 {
  always all f: File | eventually f in Trash 
}
pred __repair { idW8PSZNmKABNuZFypb_prop12 }
check __repair { idW8PSZNmKABNuZFypb_prop12 <=> prop12o }