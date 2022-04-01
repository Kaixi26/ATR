open main
pred idd9q6hhvCxMt86S6ig_prop12 {
  always all f: File | eventually f in Trash
}
pred __repair { idd9q6hhvCxMt86S6ig_prop12 }
check __repair { idd9q6hhvCxMt86S6ig_prop12 <=> prop12o }