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

(s sequence) Parse(src *source) error { 
    for {
        s := new statement
        err := s.Parse(src)
        if err != nil {
            return err
        }

    }

    return nil 
}

statement { 
}

(s statement) Parse(src *source) error {   
    for {
        t := term
        err := t.Parse(src)
        if err != nil {
            return err
        }

    }

    return nil
}

term {
    isName bool
    isOperator bool
    isBeginBrackets bool
    isEndBrackets bool
    isBeginCurlyBrackets bool
    isEndCurlyBrackets bool
    value string
}

(t term) Parse(src *source) error {
    for {
        c := src.Char()
        if c == ' ' {
            if len(t.value) > 0 {         
                break
            } 
        }
        if c == '{' {
            if len(t.value) > 0 {         
                break
            }

            t.isBeginCurlyBrackets = true

            goto NEXT
        }
        if c == '}' {
            if len(t.value) > 0 {         
                break
            }

            t.isEndCurlyBrackets = true

            goto NEXT
        }
        if ((c >= '0' && c <= '9') || 
            (c >= 'A' && c <= 'Z') || 
            (c >= 'a' && c <= 'z') || c == '_') {
            if t.isOperator {
                break
            }

            t.value += c
            t.isName = true
        }

        if !src.Next() {
            break
        }
    }

    return nil

NEXT:
    src.Next()
    return nil
}

Main() {
    src := new source
    s := new sequence

    err := s.Parse(src)
    if err != nil {   
        return
    }

    free s
    free src
}
