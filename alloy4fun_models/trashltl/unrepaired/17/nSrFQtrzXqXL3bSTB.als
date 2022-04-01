open main
pred idnSrFQtrzXqXL3bSTB_prop18 {
  always all p: Protected | eventually p in Trash implies eventually p not in Protected
}
pred __repair { idnSrFQtrzXqXL3bSTB_prop18 }
check __repair { idnSrFQtrzXqXL3bSTB_prop18 <=> prop18o }