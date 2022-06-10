open main
pred idM2Ri2zRS9s54gX5iZ_prop16 {
  always all p: Protected | historically p in Protected and always p in Protected
}
pred __repair { idM2Ri2zRS9s54gX5iZ_prop16 }
check __repair { idM2Ri2zRS9s54gX5iZ_prop16 <=> prop16o }