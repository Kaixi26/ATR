open main
pred idnBLAW6QwHAgEtfy8N_prop18 {
	always all p: Protected | p in Trash releases p not in Protected
}
pred __repair { idnBLAW6QwHAgEtfy8N_prop18 }
check __repair { idnBLAW6QwHAgEtfy8N_prop18 <=> prop18o }