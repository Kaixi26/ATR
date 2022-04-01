open main
pred id7iKEdQRHo4MFEtZQD_prop16 {
	all f:Protected | always  some (f  & Protected)  
}
pred __repair { id7iKEdQRHo4MFEtZQD_prop16 }
check __repair { id7iKEdQRHo4MFEtZQD_prop16 <=> prop16o }