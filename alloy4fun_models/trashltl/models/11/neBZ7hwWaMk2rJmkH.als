open main
pred idneBZ7hwWaMk2rJmkH_prop12 {
  eventually some f : File | f in Trash => after eventually f not in Trash or f in Trash
}
pred __repair { idneBZ7hwWaMk2rJmkH_prop12 }
check __repair { idneBZ7hwWaMk2rJmkH_prop12 <=> prop12o }