open main
pred ideq8YXihFtMyZHqjMN_prop18 {
  always all f: Protected | f in Protected until f in Trash
}
pred __repair { ideq8YXihFtMyZHqjMN_prop18 }
check __repair { ideq8YXihFtMyZHqjMN_prop18 <=> prop18o }