open main
pred idubKn6psz2bkdpEr2r_prop14 {
	all f : (Trash & Protected) | after no (f & Protected) 
}
pred __repair { idubKn6psz2bkdpEr2r_prop14 }
check __repair { idubKn6psz2bkdpEr2r_prop14 <=> prop14o }