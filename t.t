<type>

source {
}

(s source) Next() bool {
  return true
}

(s source) Char() Char {
}

blockCode {
}

(bc blockCode) Parse(src source) {

  for src.Next() {
    c :<- src.Char()
    if (c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') {
            
    }
  }
}

term { 
}

(t term) Parse(src source) {
}

Main() {
  src :<- source{}
  
  bc :<- blockCode{}
  bc.Parse(src)

}
