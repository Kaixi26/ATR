open main
pred id4ww6fbNeMBsixNGnx_prop2 {
	
	all g : Signal | eventually g = Green 
}
pred __repair { id4ww6fbNeMBsixNGnx_prop2 }
check __repair { id4ww6fbNeMBsixNGnx_prop2 <=> prop2o }