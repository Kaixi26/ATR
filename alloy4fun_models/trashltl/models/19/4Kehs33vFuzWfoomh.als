open main
pred id4Kehs33vFuzWfoomh_prop20 {
 	always (all f:File | no (f&Protected) since  f in Trash)
}
pred __repair { id4Kehs33vFuzWfoomh_prop20 }
check __repair { id4Kehs33vFuzWfoomh_prop20 <=> prop20o }