open main
pred id4Pmes9cbJCL6coFit_prop7 {
	some f: File | f in File and eventually f' in Protected
}
pred __repair { id4Pmes9cbJCL6coFit_prop7 }
check __repair { id4Pmes9cbJCL6coFit_prop7 <=> prop7o }