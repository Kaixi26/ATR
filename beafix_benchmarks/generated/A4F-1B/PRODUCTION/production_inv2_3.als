open util/ordering[Position]

// Consider the following model of an automated production line
// The production line consists of several positions in sequence
sig Position {}

// Products are either components assembled in the production line or 
// other resources (e.g. pre-assembled products or base materials)
sig Product {}

// Components are assembled in a given position from other parts
sig Component extends Product {
    parts : set Product,
    cposition : one Position
}
sig Resource extends Product {}

// Robots work somewhere in the production line
sig Robot {
        rposition : one Position
}

// Specify the following invariants!
// You can check their correctness with the different commands and
// specifying a given invariant you can assume the others to be true.
pred inv1 { // A component requires at least one part
	all c:Component | some c.parts
}


pred inv2 { // A component cannot be a part of itself
{   all c : Component | c->c not in parts} --incorrect 3  
}


pred inv3 { // The position where a component is assembled must have at least one robot
	Component.cposition in Robot.rposition
}


pred inv4 { // The parts required by a component cannot be assembled in a later position
    all c:Component | c.parts.cposition in c.cposition.*prev 
}



/*======== IFF PERFECT ORACLE ===============*/
pred inv1_OK {
	all c:Component | some c.parts --correct
}
assert inv1_Repaired {
    inv1[] iff inv1_OK[]
}
pred inv2_OK {
		all c:Component | c not in c.^parts --correct
}
assert inv2_Repaired {
    inv2[] iff inv2_OK[]
}
pred inv3_OK {
	Component.cposition in Robot.rposition --correct
}
assert inv3_Repaired {
    inv3[] iff inv3_OK[]
}
pred inv4_OK {
  all c:Component | c.parts.cposition in c.cposition.*prev  --correct
}
assert inv4_Repaired {
    inv4[] iff inv4_OK[]
}

 check inv1_Repaired expect 0
 check inv2_Repaired expect 0
 check inv3_Repaired expect 0 
 check inv4_Repaired expect 0
pred __repair {
inv2
}
assert __repair {
inv2 <=> inv2_OK
}
check __repair