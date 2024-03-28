<type>

source {
}

(s source) Next() bool {
    return true
}

(s source) Char() char {
}

error {}

sequence {
}

(s sequence) Parse(src source) error { 
    for {
        s :<- statement
        err :<- s.Parse(src)
        if err != nil {
            return err
        }

    }

    return nil 
}

statement { 
}

(s statement) Parse(src source) error {   
    for {
        t :<- term
        err :<- t.Parse(src)
        if err != nil {
            return err
        }
    }

    return nil
}

term {
    isName bool
    isOperator bool
    isBeginSequence bool
    isEndSequence bool
    isIf bool
    isFor bool
}

(t term) Parse(src source) error {
    for src.Next() {
        c :<- src.Char()
        if c == '{' {
            t.isBeginSequence = true
        }
    }
    return nil
}


Main() {
    src :<- source
    s :<- sequence
    err :<- s.Parse(src)
    if err != nil {   
        return
    }
}
