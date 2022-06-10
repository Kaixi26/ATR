open main
pred idy6EofXWqzjpC7K5bn_prop8 {

  always all f:File | some f.link implies eventually f.link in Trash
  
}
pred __repair { idy6EofXWqzjpC7K5bn_prop8 }
check __repair { idy6EofXWqzjpC7K5bn_prop8 <=> prop8o }