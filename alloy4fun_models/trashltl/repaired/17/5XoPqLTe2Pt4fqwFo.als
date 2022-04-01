open main
pred id5XoPqLTe2Pt4fqwFo_prop18 {
	always all p : Protected | p not in Protected since p in Trash 
}
pred __repair { id5XoPqLTe2Pt4fqwFo_prop18 }
check __repair { id5XoPqLTe2Pt4fqwFo_prop18 <=> prop18o }