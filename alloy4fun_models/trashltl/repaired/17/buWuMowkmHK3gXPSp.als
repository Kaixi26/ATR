open main
pred idbuWuMowkmHK3gXPSp_prop18 {
  all p:Protected | p not in Protected' implies p in Trash'

}
pred __repair { idbuWuMowkmHK3gXPSp_prop18 }
check __repair { idbuWuMowkmHK3gXPSp_prop18 <=> prop18o }