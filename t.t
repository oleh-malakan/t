source {
}

(s source) Next() bool {
  return true
}

act {
}

Main() {
  src :<- source{}
  act :<- act{}

  for src.Next() {

  }
}
