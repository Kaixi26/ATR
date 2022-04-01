open main
pred idHBgCzfKF5oNYvdof5_prop10 {
	always all p: File | always (p in Protected implies after p in Protected) 
}
pred __repair { idHBgCzfKF5oNYvdof5_prop10 }
check __repair { idHBgCzfKF5oNYvdof5_prop10 <=> prop10o }