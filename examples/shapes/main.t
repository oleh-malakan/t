Graphics {}

Shape {
    Update(dt int)
    Draw(g &Graphics)
}

Triangle {
    Size int
}

Triangle:Update(dt int) {}

Triangle:Draw(g &Graphics) {}

Scene {
    shapes []&Shape
}

Scene:Add(shape &Shape) {
    .shapes <- append(.shapes, shape)
}

SceneFree(s *Scene) {
    for _, shape := range s.shapes {
        ~shape
    }

    ~s
}

Main() {
    s :<- Scene

    s.Add(Triangle{
        Size: 5
    })    

    SceneFree(s)
}
