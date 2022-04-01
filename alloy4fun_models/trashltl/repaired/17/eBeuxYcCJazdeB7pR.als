open main
pred ideBeuxYcCJazdeB7pR_prop18 {
	all p : Protected | p in Trash triggered p not in Protected
}
pred __repair { ideBeuxYcCJazdeB7pR_prop18 }
check __repair { ideBeuxYcCJazdeB7pR_prop18 <=> prop18o }