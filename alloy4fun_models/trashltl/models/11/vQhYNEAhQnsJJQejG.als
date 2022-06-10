open main
pred idvQhYNEAhQnsJJQejG_prop12 {
  always (all f:File |  always f in Trash since  after some (f& Trash) )
}
pred __repair { idvQhYNEAhQnsJJQejG_prop12 }
check __repair { idvQhYNEAhQnsJJQejG_prop12 <=> prop12o }