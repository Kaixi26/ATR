open main
pred idZcgx3MHPpHtJ6Sowg_prop12 {
  eventually some Trash and all f: File | once f in Trash implies always f in Trash
}
pred __repair { idZcgx3MHPpHtJ6Sowg_prop12 }
check __repair { idZcgx3MHPpHtJ6Sowg_prop12 <=> prop12o }