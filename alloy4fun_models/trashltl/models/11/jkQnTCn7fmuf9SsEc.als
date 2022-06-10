open main
pred idjkQnTCn7fmuf9SsEc_prop12 {
  always all f : File | eventually f in Trash implies always f in Trash
}
pred __repair { idjkQnTCn7fmuf9SsEc_prop12 }
check __repair { idjkQnTCn7fmuf9SsEc_prop12 <=> prop12o }