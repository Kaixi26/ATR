open main
pred idKd5iRenzATR6S3DL4_prop6 {
 	always some f:File | f in Trash implies f in Trash'
}
pred __repair { idKd5iRenzATR6S3DL4_prop6 }
check __repair { idKd5iRenzATR6S3DL4_prop6 <=> prop6o }