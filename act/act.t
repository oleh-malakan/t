<act/module>

Type {
    mArr []*module.Type
    mLen int64 
    mCap int64 
}

mLen := int64(0)
mCap := int64(10)
mArr := [mCap]*module.Type

addModule(m *module.Type) {
    if mLen == mCap {
        mCap += 10
        new := [mCap]*module.Type
        for i := int64(0); i < mLen; i++ {
            new[i] = mArr[i]
        }
        tmp := mArr
        mArr = new
        ~tmp
    }

    mArr[mLen] = m
    mLen++
}

