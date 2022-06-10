open main
pred idfjfotQGzXxNrbS3dF_prop20 {
	always all f : File | f in Trash since f not in Protected 
}
pred __repair { idfjfotQGzXxNrbS3dF_prop20 }
check __repair { idfjfotQGzXxNrbS3dF_prop20 <=> prop20o }