open main
pred idvXNwkB6WWMzeD8EFu_prop18 {
  always all p: Protected | eventually p in Trash implies p not in Protected
}
pred __repair { idvXNwkB6WWMzeD8EFu_prop18 }
check __repair { idvXNwkB6WWMzeD8EFu_prop18 <=> prop18o }