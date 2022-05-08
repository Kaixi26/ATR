//Line and OP: Line 703 <BES> 
//ORIGINAL: ((t . Teaches) & ((Groups . Person) . Group))
//MUTATION: (t . Teaches)
//Line and OP: Line 703 <JEE> 
//ORIGINAL: (t . Teaches)
//MUTATION: (t . (Teaches . Groups))
open util/integer as integer


sig Person {
	Tutors : set Person,
	Teaches : set Class
}

sig Group {
}

sig Class {
	Groups : (Person -> Group)
}

sig Teacher extends Person {
}

sig Student extends Person {
}

pred inv1 []{
	Person in Student
}

pred inv2 []{
	no Teacher
}

pred inv3 []{
	no (Student & Teacher)
}

pred inv4 []{
	Person in (Student + Teacher)
}

pred inv5 []{
	some (Teacher . Teaches)
}

pred inv6 []{
	Teacher in (Teaches . Class)
}

pred inv7 []{
	Class in (Teacher . Teaches)
}

pred inv8 []{
	all t : Teacher | lone (t . Teaches)
}

pred inv9 []{
	all c : Class | lone ((Teaches . c) & Teacher)
}

pred inv10 []{
	all c : Class, s : Student | some (s . (c . Groups))
}

pred inv11 []{
	all c : Class | (some (c . Groups)) => (some (Teacher & (Teaches . c)))
}

pred inv12 []{
	all t : Teacher | some (t . (Teaches . Groups))
}

pred inv13 []{
	((Tutors . Person) in Teacher) && ((Person . Tutors) in Student)
}

pred inv14 []{
	all s : Person, c : Class, t : Person, g : Group | (((c -> (s -> g)) in Groups) && ((t -> c) in Teaches)) => ((t -> s) in Tutors)
}

pred inv15 []{
	all s : Person | some (Teacher & ((^ Tutors) . s))
}

pred inv1_OK []{
	Person in Student
}

pred inv2_OK []{
	no Teacher
}

pred inv3_OK []{
	no (Student & Teacher)
}

pred inv4_OK []{
	Person in (Student + Teacher)
}

pred inv5_OK []{
	some (Teacher . Teaches)
}

pred inv6_OK []{
	Teacher in (Teaches . Class)
}

pred inv7_OK []{
	Class in (Teacher . Teaches)
}

pred inv8_OK []{
	all t : Teacher | lone (t . Teaches)
}

pred inv9_OK []{
	all c : Class | lone ((Teaches . c) & Teacher)
}

pred inv10_OK []{
	all c : Class, s : Student | some (s . (c . Groups))
}

pred inv11_OK []{
	all c : Class | (some (c . Groups)) => (some (Teacher & (Teaches . c)))
}

pred inv12_OK []{
	all t : Teacher | some ((t . Teaches) . Groups)
}

pred inv13_OK []{
	((Tutors . Person) in Teacher) && ((Person . Tutors) in Student)
}

pred inv14_OK []{
	all s : Person, c : Class, t : Person, g : Group | (((c -> (s -> g)) in Groups) && ((t -> c) in Teaches)) => ((t -> s) in Tutors)
}

pred inv15_OK []{
	all s : Person | some (Teacher & ((^ Tutors) . s))
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

assert inv11_Repaired {
	inv11[] <=> inv11_OK[]
}

assert inv12_Repaired {
	inv12[] <=> inv12_OK[]
}

assert inv13_Repaired {
	inv13[] <=> inv13_OK[]
}

assert inv14_Repaired {
	inv14[] <=> inv14_OK[]
}

assert inv15_Repaired {
	inv15[] <=> inv15_OK[]
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
check inv11_Repaired expect 0
check inv12_Repaired expect 0
check inv13_Repaired expect 0
check inv14_Repaired expect 0
check inv15_Repaired expect 0

