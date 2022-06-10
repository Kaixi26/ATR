open main
pred idTgvLog75MGE7o22wx_prop18 {
  always all p: Protected | eventually p in Trash implies p not in Protected
}
pred __repair { idTgvLog75MGE7o22wx_prop18 }
check __repair { idTgvLog75MGE7o22wx_prop18 <=> prop18o }