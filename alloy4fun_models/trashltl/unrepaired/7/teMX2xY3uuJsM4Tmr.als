open main
pred idteMX2xY3uuJsM4Tmr_prop8 {

  always all f:File | idteMX2xY3uuJsM4Tmr_isLink[f] implies eventually f.link in Trash
}
pred idteMX2xY3uuJsM4Tmr_isLink[f:File]{
	some g:File | g->f in link
}
pred __repair { idteMX2xY3uuJsM4Tmr_prop8 }
check __repair { idteMX2xY3uuJsM4Tmr_prop8 <=> prop8o }