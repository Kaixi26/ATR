open main
pred iddaBC7mMgZ6Wqa6Yki_prop10 {
	eventually all f: Protected | once f in Protected implies always f in Protected
}
pred __repair { iddaBC7mMgZ6Wqa6Yki_prop10 }
check __repair { iddaBC7mMgZ6Wqa6Yki_prop10 <=> prop10o }