//Line and OP: Line 76 <BES> 
//ORIGINAL: ((u <: profile) . Work)
//MUTATION: Work
//Line and OP: Line 76 <JEE> 
//ORIGINAL: Work
//MUTATION: (u . profile)
open util/integer as integer


abstract sig Source {
}

sig User extends Source {
	profile : set Work,
	visible : set Work
}

sig Institution extends Source {
}

sig Id {
}

sig Work {
	ids : some Id,
	source : one Source
}

pred inv1 []{
	all u : User | (u . visible) in (u . profile)
}

pred inv2 []{
	all u : User | (u . profile) in ((source . u) + (source . Institution))
}

pred inv3 []{
	all w1, w2 : Work, u : User | ({
		w1 != w2
		(w1 + w2) in (u . profile)
		(w1 . source) = (w2 . source)
	}) => (no ((w1 . ids) & (w2 . ids)))
}

pred inv1_OK []{
	all u : User | (u . visible) in (u . profile)
}

pred inv2_OK []{
	all u : User, w : Work | (w in (u . profile)) => ((u in (w . source)) || (some i : Institution | i in (w . source)))
}

pred inv3_OK []{
	all w1, w2 : Work, u : User | ({
		w1 != w2
		(w1 + w2) in (u . profile)
		(w1 . source) = (w2 . source)
	}) => (no ((w1 . ids) & (w2 . ids)))
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

check inv1_Repaired expect 0
check inv2_Repaired expect 0
check inv3_Repaired expect 0

