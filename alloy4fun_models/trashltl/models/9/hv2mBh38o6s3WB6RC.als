open main
pred idhv2mBh38o6s3WB6RC_prop10 {
	always all f:File | f in Protected implies always f in Protected
}
pred __repair { idhv2mBh38o6s3WB6RC_prop10 }
check __repair { idhv2mBh38o6s3WB6RC_prop10 <=> prop10o }