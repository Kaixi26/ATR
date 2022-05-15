//Line and OP: Line 64 <BES> 
//ORIGINAL: (c . ^ parts)
//MUTATION: c
open util/integer as integer
open util/ordering[Position] as ordering


sig Position {
}

sig Product {
}

sig Component extends Product {
	parts : set Product,
	cposition : one Position
}

sig Resource extends Product {
}

sig Robot {
	rposition : one Position
}

pred inv1 []{
	all c : Component | some (c . parts)
}

pred inv2 []{
	all c : Component | c !in (c . (^ parts))
}

pred inv3 []{
	all c : Component | (c . cposition) in (Robot . rposition)
}

pred inv4 []{
	all c : Component | ((c . parts) . cposition) in ((c . cposition) . (* ordering/prev[]))
}

pred inv1_OK []{
	all c : Component | some (c . parts)
}

pred inv2_OK []{
	all c : Component | c !in (c . (^ parts))
}

pred inv3_OK []{
	(Component . cposition) in (Robot . rposition)
}

pred inv4_OK []{
	all c : Component | ((c . parts) . cposition) in ((c . cposition) . (* ordering/prev[]))
}

assert inv1_Repaired {
	inv1[] <=> inv1_OK[]
}

assert inv2_Repaired {
	inv2[] <=> inv2_OK[]
}

assert inv3_Repaired {
	inv3[] <=> inv3_OK[]
}

assert inv4_Repaired {
	inv4[] <=> inv4_OK[]
}

check inv1_Repaired expect 0
check inv2_Repaired expect 0
check inv3_Repaired expect 0
check inv4_Repaired expect 0

