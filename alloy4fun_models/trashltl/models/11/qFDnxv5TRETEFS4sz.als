open main
pred idqFDnxv5TRETEFS4sz_prop12 {
  always all f: File | f in Trash or eventually f in Trash
}
pred __repair { idqFDnxv5TRETEFS4sz_prop12 }
check __repair { idqFDnxv5TRETEFS4sz_prop12 <=> prop12o }