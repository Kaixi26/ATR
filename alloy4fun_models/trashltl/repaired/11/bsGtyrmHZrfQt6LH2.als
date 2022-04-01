open main
pred idbsGtyrmHZrfQt6LH2_prop12 {
  eventually some f : File | f in Trash => after  eventually f not in Trash
}
pred __repair { idbsGtyrmHZrfQt6LH2_prop12 }
check __repair { idbsGtyrmHZrfQt6LH2_prop12 <=> prop12o }