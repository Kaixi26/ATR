open main
pred id4PJHC8s3eDWFW7AmN_prop3 {
	
	always (Train.pos)' = Train.pos
}
pred __repair { id4PJHC8s3eDWFW7AmN_prop3 }
check __repair { id4PJHC8s3eDWFW7AmN_prop3 <=> prop3o }