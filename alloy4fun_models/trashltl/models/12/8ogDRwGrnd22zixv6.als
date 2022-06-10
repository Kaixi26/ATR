open main
pred id8ogDRwGrnd22zixv6_prop13 {
	some f : File & Trash | once f not in Trash
}
pred __repair { id8ogDRwGrnd22zixv6_prop13 }
check __repair { id8ogDRwGrnd22zixv6_prop13 <=> prop13o }