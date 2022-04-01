open main
pred idpQYbN2cq85s94CDcv_prop10 {
  always(all p: Protected | always p in Protected)
}
pred __repair { idpQYbN2cq85s94CDcv_prop10 }
check __repair { idpQYbN2cq85s94CDcv_prop10 <=> prop10o }