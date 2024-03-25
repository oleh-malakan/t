source {
}

(s source) Next() byte {
  return nil
}

act {
}

state {
  src source
  act act
}

blockCode {
}

(bc blockCode) Add(b byte, st state) {

  for b :<- st.src.Next(); b != nil {
    if (b > 47 && < 58) || (b > 64 && b < 91) || (b > 96 && b < 123) {
      
      
    }
  }
}

term { 
  b []byte
}

(t term) Add(b byte, st state) {
}

Main() {
  st :<- {
    src: source{}
    act: act{}
  }

  bc :<- blockCode{}
  bc.Add(nil, st)

}
