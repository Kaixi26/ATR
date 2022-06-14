open main
pred idGmvX3sG6mLk82i95G_prop2 {
	
	always ( all s : Signal | eventually s=Green)
}
pred __repair { idGmvX3sG6mLk82i95G_prop2 }
check __repair { idGmvX3sG6mLk82i95G_prop2 <=> prop2o }