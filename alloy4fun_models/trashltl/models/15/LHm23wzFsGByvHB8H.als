open main
pred idLHm23wzFsGByvHB8H_prop16 {
	all f:File | f in Protected implies historically f in Protected
}
pred __repair { idLHm23wzFsGByvHB8H_prop16 }
check __repair { idLHm23wzFsGByvHB8H_prop16 <=> prop16o }