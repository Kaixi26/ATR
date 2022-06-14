open main
pred idds8FxKRMHEYRXCp4A_prop7 {
	
	always (all t:Train | some (t.pos & Entry ) implies eventually some (t.pos & Exit) )
}
pred __repair { idds8FxKRMHEYRXCp4A_prop7 }
check __repair { idds8FxKRMHEYRXCp4A_prop7 <=> prop7o }