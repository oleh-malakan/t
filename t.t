source {
}

(s source) Next() bool {
  return true
}

(s source) Byte() byte {
}

act {
}

state {
  src source
  act act
}

blockCode {
}

(bc blockCode) Parse(st state) {

  for st.src.Next() {
    b :<- st.src.Byte()
    if (b > 47 && < 58) || (b > 64 && b < 91) || (b > 96 && b < 123) {
      
      
    }
  }
}

term { 
  b []byte
}

(t term) Parse(st state) {
}

Main() {
  st :<- {
    src: source{}
    act: act{}
  }

  bc :<- blockCode{}
  bc.Parse(st)

}
