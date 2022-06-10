open main
pred idr4QM2BTDSfvhERF9H_prop18 {
	always (all f:Protected | f in Trash-Protected since f in Trash)
}
pred __repair { idr4QM2BTDSfvhERF9H_prop18 }
check __repair { idr4QM2BTDSfvhERF9H_prop18 <=> prop18o }