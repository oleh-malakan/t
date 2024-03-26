source {
}

(s source) Next() Bool {
  return true
}

(s source) Char() Char {
}

blockCode {
}

(bc blockCode) Parse(src source) {

  for src.Next() {
    c :<- src.Char()
    if (c >= '0' && c <= '9') || 
        (c >= 'A' && c <= 'Z') || 
        (c >= 'a' && c <= 'z') {      
      
    }
  }
}

Main() {
  src :<- source{}
  
  bc :<- blockCode{}
  bc.Parse(src)

}
