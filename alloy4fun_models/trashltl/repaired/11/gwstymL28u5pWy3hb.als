open main
pred idgwstymL28u5pWy3hb_prop12 {
  always (all f:File |  after some (f& Trash) implies  always f in Trash  )
}
pred __repair { idgwstymL28u5pWy3hb_prop12 }
check __repair { idgwstymL28u5pWy3hb_prop12 <=> prop12o }