open main
pred idQRRSSRWgxMgnHpkRx_prop17 {
  all f: File |eventually (once f in Trash implies File' = File - f)

}
pred __repair { idQRRSSRWgxMgnHpkRx_prop17 }
check __repair { idQRRSSRWgxMgnHpkRx_prop17 <=> prop17o }