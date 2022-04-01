open main
pred idi4qES4tjLHhnTtfuv_prop10 {
  always all p: Protected | always p in Protected
}
pred __repair { idi4qES4tjLHhnTtfuv_prop10 }
check __repair { idi4qES4tjLHhnTtfuv_prop10 <=> prop10o }