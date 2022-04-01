open main
pred idm8LPAAZzaMG9XgBPw_prop9 {
  
  always all p: Protected | always p not in Trash 
}
pred __repair { idm8LPAAZzaMG9XgBPw_prop9 }
check __repair { idm8LPAAZzaMG9XgBPw_prop9 <=> prop9o }