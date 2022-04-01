open main
pred idv84vMDchEGWBfdC3t_prop16 {
	all f:Protected | always  some (f  & Protected')  
}
pred __repair { idv84vMDchEGWBfdC3t_prop16 }
check __repair { idv84vMDchEGWBfdC3t_prop16 <=> prop16o }