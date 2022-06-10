open main
pred idJ7yiCPrHE3LWH7TRr_prop18 {
  always all f: Protected | f in Protected until f in Trash
}
pred __repair { idJ7yiCPrHE3LWH7TRr_prop18 }
check __repair { idJ7yiCPrHE3LWH7TRr_prop18 <=> prop18o }