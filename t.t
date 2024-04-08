source {
}

source:Next() bool {
    return true
}

source:Char() char {
}

error {
    Error() string
}

sequence {
}

sequenceFree(s *sequence) {
    ~s
}

sequenceParse(src *source) *sequence, error { 
    seq := &sequence
    for {
        s := &statement
        err := s.Parse(src)
        if err != nil {
            return err
        }

    }

    return seq, nil 
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

statementFree(s *statement) {
    for _, t := range s.v {
        ~t
    }
  
    ~s.v
}

statementParse(src *source) (*statement, error) {  
    s := &statement{
        v: []*term
    }

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

        .v = .v + t
    }

    return s, nil
}

Main() {
    src := &source
    s, err := sequenceParse(src)
    if err != nil {   
        return
    }

    sequenceFree(s) 
    ~src
}
