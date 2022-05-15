//Line and OP: Line 4 <VCR> 
//ORIGINAL: File
//MUTATION: Trash
open util/integer as integer


sig File {
	link : set File
}

sig Trash extends File {
}

sig Protected extends File {
}

pred inv1 []{
	no Trash
}

pred inv2 []{
	File in Trash
}

pred inv3 []{
	some Trash
}

pred inv4 []{
	no (Protected & Trash)
}

pred inv5 []{
	(File - Protected) in Trash
}

pred inv6 []{
	((~ link) . link) in iden
}

pred inv7 []{
	all f : Trash | no (link . f)
}

pred inv8 []{
	no link
}

pred inv9 []{
	no (link . link)
}

pred inv10 []{
	(Trash . link) in Trash
}

pred inv1_OK []{
	no Trash
}

pred inv2_OK []{
	File in Trash
}

pred inv3_OK []{
	some Trash
}

pred inv4_OK []{
	no (Protected & Trash)
}

pred inv5_OK []{
	(File - Protected) in Trash
}

pred inv6_OK []{
	((~ link) . link) in iden
}

pred inv7_OK []{
	no (link . Trash)
}

pred inv8_OK []{
	no link
}

pred inv9_OK []{
	no (link . link)
}

pred inv10_OK []{
	(Trash . link) in Trash
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

assert inv5_Repaired {
	inv5[] <=> inv5_OK[]
}

assert inv6_Repaired {
	inv6[] <=> inv6_OK[]
}

assert inv7_Repaired {
	inv7[] <=> inv7_OK[]
}

assert inv8_Repaired {
	inv8[] <=> inv8_OK[]
}

assert inv9_Repaired {
	inv9[] <=> inv9_OK[]
}

assert inv10_Repaired {
	inv10[] <=> inv10_OK[]
}

check inv1_Repaired expect 0
check inv2_Repaired expect 0
check inv3_Repaired expect 0
check inv4_Repaired expect 0
check inv5_Repaired expect 0
check inv6_Repaired expect 0
check inv7_Repaired expect 0
check inv8_Repaired expect 0
check inv9_Repaired expect 0
check inv10_Repaired expect 0

