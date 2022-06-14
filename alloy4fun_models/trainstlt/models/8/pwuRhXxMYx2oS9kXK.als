open main
pred idpwuRhXxMYx2oS9kXK_prop9 {
	
	  all t:Train |  eventually ( some t.pos & Entry)  
}
pred __repair { idpwuRhXxMYx2oS9kXK_prop9 }
check __repair { idpwuRhXxMYx2oS9kXK_prop9 <=> prop9o }