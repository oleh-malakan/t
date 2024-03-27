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
    for src.Next {
        c :<- src.Char()
        if c != ' ' || byte(c) != 10 || byte(c) != 13 {
            s :<- statement
            err :<- s.Parse(src)
            if err != nil {
                return err
            }
        }
    }
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
