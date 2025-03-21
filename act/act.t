<act/module>
<error>

T {
    moduleArr []*module.T
    moduleLen int64 
    moduleCap int64 
}

addModule(t *T, m *module.T) {
    if t.moduleLen == t.moduleCap {
        t.moduleCap += 64
        new := [t.moduleCap]*module.T
        for i := int64(0); i < t.moduleLen; i++ {
            new[i] = t.moduleArr[i]
        }
        tmp := t.moduleArr
        t.moduleArr = new
        ~tmp
    }

    t.moduleArr[t.moduleLen] = m
    t.moduleLen++
}

Parse() (*T, *error.T) {
    t := &T{
        moduleArr: [64]*module.T,
        moduleLen: 0,
        moduleCap: 64,
    }

    return t, nil
}

Free(t *T) {
    for i := int64(0); i < t.moduleLen; i++ {
        module.Free(t.moduleArr[i])
    }
    ~t.moduleArr
    
    ~t
}