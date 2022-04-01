open main
pred idRPSktEY2bKy6C8cBr_prop18 {
  always all p: Protected | eventually p not in Protected implies p in Trash
}
pred __repair { idRPSktEY2bKy6C8cBr_prop18 }
check __repair { idRPSktEY2bKy6C8cBr_prop18 <=> prop18o }