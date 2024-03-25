source {
}

(s source) Next() bool {
  return true
}

(s source) Byte() byte {
}

act {
}

blockCode {
}

(bc blockCode) Parse(src source, act act) {

  for src.Next() {
    b :<- src.Byte()
    if (b > 47 && < 58) || (b > 64 && b < 91) || (b > 96 && b < 123) {
      
      
    }
  }
}

term { 
  b []byte
}

(t term) Parse(src source) {
}

Main() {
  src :<- source{}
  act :<- act{}
  

  bc :<- blockCode{}
  bc.Parse(src, act)

}
