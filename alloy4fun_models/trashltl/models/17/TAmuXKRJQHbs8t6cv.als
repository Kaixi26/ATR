open main
pred idTAmuXKRJQHbs8t6cv_prop18 {
  always all f: Protected | f in Protected until f in Trash
}
pred __repair { idTAmuXKRJQHbs8t6cv_prop18 }
check __repair { idTAmuXKRJQHbs8t6cv_prop18 <=> prop18o }