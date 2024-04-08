source {
}

source:Next() bool {
    return true
}

source:Char() char {
}

error {}

sequence {
}

sequence:() {
}

sequence:~() {
}

sequence:Parse(src *source) error { 
    for {
        s := new statement
        err := s.Parse(src)
        if err != nil {
            return err
        }

    }

    return nil 
}

::TermBeginCurlyBrackets = 0
::TermEndCurlyBrackets = 1
::TermBeginRoundBrackets = 2
::TermEndRoundBrackets = 3
::TermName = 4
::TermOperator = 5    
    
term {
    type int
    value string
}

statement { 
    v []*term
}

statement:Parse(src *source) error {  
    for {
        t := &term
    LOOP:
        for src.Next() {
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

                t.type = TermBeginCurlyBrackets

                break
            }
            if c == '}' {
                if len(t.value) > 0 {         
                    break
                }

                t.type = TermEndCurlyBrackets

                break
            }
            for ((c >= '0' && c <= '9') || 
                (c >= 'A' && c <= 'Z') || 
                (c >= 'a' && c <= 'z') || c == '_') {
                if t.type == TermOperator {
                    break LOOP 
                }

                t.value += c
                t.type = TermName

                if !src.Next() {
                    break LOOP 
                }

                c = src.Char()
            }

        }

        .v = append(.v, t)
    }

    return nil
}

Main() {
    src := &source
    s := &sequence

    err := s.Parse(src)
    if err != nil {   
        return
    }

    ~s
    ~src
}
