Graphics {}


Shape {
    Update(dt int)
    Draw(g @Graphics)
}

Triangle {}

Triangle:Update(dt int) {}

Triangle:Draw(g @Graphics) {}

Scene {
    shapes []@Shape
}

Scene:Add(shape @Shape) {

}

Main() {
    s := &Scene
    t := &Triangle

    s.Add(t)    

    ~s
    ~t
}


Shape [T Graphics] {
    Update(dt int)
    Draw(g *T)
}

Triangle [T Graphics] {}

Triangle:Update(dt int) {}

Triangle:Draw(g *T) {}

Scene [T Shape] {
    shapes []*T
}

Scene:Add(shape *T) {

}


Main() {
    s := &Scene[Shape]
    t := &Triangle[Graphics]

    s.Add(t)    

    ~s
    ~t
}

