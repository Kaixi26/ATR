open main
pred idcaxmPqPD7oAL4AeBf_prop18 {
	always all p : Protected | p in Protected until p in Trash
}
pred __repair { idcaxmPqPD7oAL4AeBf_prop18 }
check __repair { idcaxmPqPD7oAL4AeBf_prop18 <=> prop18o }