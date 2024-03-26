<type>

source {
}

(s source) Next() bool {
    return true
}

(s source) Char() Char {
}

error {}

sequence {
}

(s sequence) Parse(src source) error { 
}

statement { 
    value string
}

(s statement) Parse(src source) error {           
}

Main() {
    src :<- source
    s :<- sequence
    err :<- s.Parse(src)
    if err != nil {   
        return
    }
}
