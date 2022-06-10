open main
pred idHD72y2tn8ZH8jDPsN_prop4 {
  	some f: File | once f not in Protected implies eventually always f in Trash

}
pred __repair { idHD72y2tn8ZH8jDPsN_prop4 }
check __repair { idHD72y2tn8ZH8jDPsN_prop4 <=> prop4o }