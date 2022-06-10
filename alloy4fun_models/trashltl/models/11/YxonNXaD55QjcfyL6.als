open main
pred idYxonNXaD55QjcfyL6_prop12 {
  all f: File | eventually some Trash and once f in Trash implies always f in Trash
}
pred __repair { idYxonNXaD55QjcfyL6_prop12 }
check __repair { idYxonNXaD55QjcfyL6_prop12 <=> prop12o }