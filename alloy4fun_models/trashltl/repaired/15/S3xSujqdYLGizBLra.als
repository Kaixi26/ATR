open main
pred idS3xSujqdYLGizBLra_prop16 {
	all f: File | once f in Protected implies historically f in Protected
}
pred __repair { idS3xSujqdYLGizBLra_prop16 }
check __repair { idS3xSujqdYLGizBLra_prop16 <=> prop16o }