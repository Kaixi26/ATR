open main
pred id9Qz5xfsLeTscZ9Atf_prop4 {
  some File
  some f:File | eventually f in Trash
}
pred __repair { id9Qz5xfsLeTscZ9Atf_prop4 }
check __repair { id9Qz5xfsLeTscZ9Atf_prop4 <=> prop4o }