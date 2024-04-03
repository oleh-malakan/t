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
    isBeginSequence bool
    isEndSequence bool
    isIf bool
    isFor bool
    value string
}

(t term) Parse(src *source) error {
    isName bool
    isOperator bool
    for {
        c := src.Char()
        if c == ' ' {
            if len(t.value) > 0 {         
                break
            }

            continue 
        }
        if c == '{' {
            if len(t.value) > 0 {         
                break
            }

            t.isBeginSequence = true

            return nil
        }
        if c == '}' {
            if len(t.value) > 0 {         
                break
            }

            t.isEndSequence = true

            return nil
        }
        if ((c >= '0' && c <= '9') || 
            (c >= 'A' && c <= 'Z') || 
            (c >= 'a' && c <= 'z') || c == '_') {
            if isOperator {
                break
            }

            t.value += c
            isName = true

            continue 
        }
        
        if !src.Next() {
            break
        }


    }






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
